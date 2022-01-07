; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_debug_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_utils.c_i40iw_debug_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"starting address virt=%p phy=%llxh\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"index %03d val: %016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_debug_buf(%struct.i40iw_sc_dev* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.i40iw_sc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40iw_sc_dev* %0, %struct.i40iw_sc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  br label %48

19:                                               ; preds = %5
  %20 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, ...) @i40iw_debug(%struct.i40iw_sc_dev* %20, i32 %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @virt_to_phys(i32* %27)
  %29 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, ...) @i40iw_debug(%struct.i40iw_sc_dev* %24, i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %26, i64 %28)
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %45, %19
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sdiv i32 %39, 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (%struct.i40iw_sc_dev*, i32, i8*, ...) @i40iw_debug(%struct.i40iw_sc_dev* %35, i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 8
  store i32 %47, i32* %11, align 4
  br label %30

48:                                               ; preds = %18, %30
  ret void
}

declare dso_local i32 @i40iw_debug(%struct.i40iw_sc_dev*, i32, i8*, ...) #1

declare dso_local i64 @virt_to_phys(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
