; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_res_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_saa7146_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_fh = type { i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"already allocated! want: 0x%02x, cur:0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"locked! vv->resources:0x%02x, we want:0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"res: get 0x%02x, cur:0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7146_res_get(%struct.saa7146_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca %struct.saa7146_vv*, align 8
  store %struct.saa7146_fh* %0, %struct.saa7146_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %9 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %8, i32 0, i32 1
  %10 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  store %struct.saa7146_dev* %10, %struct.saa7146_dev** %6, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %12 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %11, i32 0, i32 0
  %13 = load %struct.saa7146_vv*, %struct.saa7146_vv** %12, align 8
  store %struct.saa7146_vv* %13, %struct.saa7146_vv** %7, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DEB_D(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  store i32 1, i32* %3, align 4
  br label %55

26:                                               ; preds = %2
  %27 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %28 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %35 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @DEB_D(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  store i32 0, i32* %3, align 4
  br label %55

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.saa7146_fh*, %struct.saa7146_fh** %4, align 8
  %42 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %47 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.saa7146_vv*, %struct.saa7146_vv** %7, align 8
  %52 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DEB_D(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %53)
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %39, %33, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DEB_D(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
