; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_set_write_amp_trip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-sysfs.c_pblk_sysfs_set_write_amp_trip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i8*, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pblk*, i8*, i64)* @pblk_sysfs_set_write_amp_trip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pblk_sysfs_set_write_amp_trip(%struct.pblk* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @strcspn(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %48

18:                                               ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @kstrtouint(i8* %19, i32 0, i32* %9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %48

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %48

31:                                               ; preds = %25
  %32 = load %struct.pblk*, %struct.pblk** %5, align 8
  %33 = getelementptr inbounds %struct.pblk, %struct.pblk* %32, i32 0, i32 4
  %34 = call i8* @atomic64_read(i32* %33)
  %35 = load %struct.pblk*, %struct.pblk** %5, align 8
  %36 = getelementptr inbounds %struct.pblk, %struct.pblk* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.pblk*, %struct.pblk** %5, align 8
  %38 = getelementptr inbounds %struct.pblk, %struct.pblk* %37, i32 0, i32 2
  %39 = call i8* @atomic64_read(i32* %38)
  %40 = load %struct.pblk*, %struct.pblk** %5, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load %struct.pblk*, %struct.pblk** %5, align 8
  %43 = getelementptr inbounds %struct.pblk, %struct.pblk* %42, i32 0, i32 0
  %44 = call i8* @atomic64_read(i32* %43)
  %45 = load %struct.pblk*, %struct.pblk** %5, align 8
  %46 = getelementptr inbounds %struct.pblk, %struct.pblk* %45, i32 0, i32 1
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* %7, align 8
  store i64 %47, i64* %4, align 8
  br label %48

48:                                               ; preds = %31, %28, %22, %15
  %49 = load i64, i64* %4, align 8
  ret i64 %49
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i8* @atomic64_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
