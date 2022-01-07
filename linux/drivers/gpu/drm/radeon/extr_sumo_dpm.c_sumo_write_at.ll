; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_write_at.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_write_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_AT_0 = common dso_local global i32 0, align 4
@CG_AT_1 = common dso_local global i32 0, align 4
@CG_AT_2 = common dso_local global i32 0, align 4
@CG_AT_3 = common dso_local global i32 0, align 4
@CG_AT_4 = common dso_local global i32 0, align 4
@CG_AT_5 = common dso_local global i32 0, align 4
@CG_AT_6 = common dso_local global i32 0, align 4
@CG_AT_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @sumo_write_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_write_at(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %3
  %10 = load i32, i32* @CG_AT_0, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @WREG32(i32 %10, i32 %11)
  br label %69

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @CG_AT_1, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WREG32(i32 %17, i32 %18)
  br label %68

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* @CG_AT_2, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @WREG32(i32 %24, i32 %25)
  br label %67

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* @CG_AT_3, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  br label %66

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @CG_AT_4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  br label %65

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @CG_AT_5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  br label %64

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 6
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i32, i32* @CG_AT_6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @WREG32(i32 %52, i32 %53)
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 7
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i32, i32* @CG_AT_7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @WREG32(i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %55
  br label %63

63:                                               ; preds = %62, %51
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %37
  br label %66

66:                                               ; preds = %65, %30
  br label %67

67:                                               ; preds = %66, %23
  br label %68

68:                                               ; preds = %67, %16
  br label %69

69:                                               ; preds = %68, %9
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
