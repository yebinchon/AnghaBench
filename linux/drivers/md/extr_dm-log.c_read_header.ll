; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_read_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_c = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }

@REQ_OP_READ = common dso_local global i32 0, align 4
@DEFAULTSYNC = common dso_local global i64 0, align 8
@MIRROR_MAGIC = common dso_local global i64 0, align 8
@MIRROR_DISK_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"incompatible disk log version\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_c*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.log_c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.log_c*, align 8
  %4 = alloca i32, align 4
  store %struct.log_c* %0, %struct.log_c** %3, align 8
  %5 = load %struct.log_c*, %struct.log_c** %3, align 8
  %6 = load i32, i32* @REQ_OP_READ, align 4
  %7 = call i32 @rw_header(%struct.log_c* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.log_c*, %struct.log_c** %3, align 8
  %14 = getelementptr inbounds %struct.log_c, %struct.log_c* %13, i32 0, i32 1
  %15 = load %struct.log_c*, %struct.log_c** %3, align 8
  %16 = getelementptr inbounds %struct.log_c, %struct.log_c* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @header_from_disk(%struct.TYPE_2__* %14, i32 %17)
  %19 = load %struct.log_c*, %struct.log_c** %3, align 8
  %20 = getelementptr inbounds %struct.log_c, %struct.log_c* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DEFAULTSYNC, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %12
  %25 = load %struct.log_c*, %struct.log_c** %3, align 8
  %26 = getelementptr inbounds %struct.log_c, %struct.log_c* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MIRROR_MAGIC, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %24, %12
  %32 = load i64, i64* @MIRROR_MAGIC, align 8
  %33 = load %struct.log_c*, %struct.log_c** %3, align 8
  %34 = getelementptr inbounds %struct.log_c, %struct.log_c* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i64 %32, i64* %35, align 8
  %36 = load i32, i32* @MIRROR_DISK_VERSION, align 4
  %37 = load %struct.log_c*, %struct.log_c** %3, align 8
  %38 = getelementptr inbounds %struct.log_c, %struct.log_c* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.log_c*, %struct.log_c** %3, align 8
  %41 = getelementptr inbounds %struct.log_c, %struct.log_c* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %31, %24
  %44 = load %struct.log_c*, %struct.log_c** %3, align 8
  %45 = getelementptr inbounds %struct.log_c, %struct.log_c* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @MIRROR_DISK_VERSION, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = call i32 @DMWARN(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %50, %10
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @rw_header(%struct.log_c*, i32) #1

declare dso_local i32 @header_from_disk(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @DMWARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
