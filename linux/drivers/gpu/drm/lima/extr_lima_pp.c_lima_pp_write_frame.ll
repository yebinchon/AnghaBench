; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_write_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_pp.c_lima_pp_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_ip = type { i64 }

@LIMA_PP_FRAME_REG_NUM = common dso_local global i32 0, align 4
@LIMA_PP_FRAME = common dso_local global i64 0, align 8
@LIMA_PP_WB_REG_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lima_ip*, i32*, i32*)* @lima_pp_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lima_pp_write_frame(%struct.lima_ip* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.lima_ip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lima_ip* %0, %struct.lima_ip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @LIMA_PP_FRAME_REG_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.lima_ip*, %struct.lima_ip** %4, align 8
  %21 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LIMA_PP_FRAME, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @writel(i32 %19, i64 %28)
  br label %30

30:                                               ; preds = %14
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %64, %33
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %60, %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LIMA_PP_WB_REG_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %38
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.lima_ip*, %struct.lima_ip** %4, align 8
  %50 = getelementptr inbounds %struct.lima_ip, %struct.lima_ip* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @LIMA_PP_WB(i32 %52)
  %54 = add nsw i64 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = call i32 @writel(i32 %48, i64 %58)
  br label %60

60:                                               ; preds = %42
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %38

63:                                               ; preds = %38
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %34

67:                                               ; preds = %34
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LIMA_PP_WB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
