; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_send_msg_to_smu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_smc.c_sumo_send_msg_to_smu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@GFX_INT_STATUS = common dso_local global i32 0, align 4
@INT_DONE = common dso_local global i32 0, align 4
@INT_REQ = common dso_local global i32 0, align 4
@GFX_INT_REQ = common dso_local global i32 0, align 4
@INT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @sumo_send_msg_to_smu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_send_msg_to_smu(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load i32, i32* @GFX_INT_STATUS, align 4
  %15 = call i32 @RREG32(i32 %14)
  %16 = load i32, i32* @INT_DONE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = call i32 @udelay(i32 1)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %19, %7
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @SERV_INDEX(i32 %26)
  %28 = load i32, i32* @INT_REQ, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @GFX_INT_REQ, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @WREG32(i32 %30, i32 %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %48, %25
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32, i32* @GFX_INT_REQ, align 4
  %41 = call i32 @RREG32(i32 %40)
  %42 = load i32, i32* @INT_REQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %51

46:                                               ; preds = %39
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %33

51:                                               ; preds = %45, %33
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i32, i32* @GFX_INT_STATUS, align 4
  %60 = call i32 @RREG32(i32 %59)
  %61 = load i32, i32* @INT_ACK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58
  %66 = call i32 @udelay(i32 1)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %52

70:                                               ; preds = %64, %52
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %86, %70
  %72 = load i32, i32* %6, align 4
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load i32, i32* @GFX_INT_STATUS, align 4
  %79 = call i32 @RREG32(i32 %78)
  %80 = load i32, i32* @INT_DONE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77
  %85 = call i32 @udelay(i32 1)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %71

89:                                               ; preds = %83, %71
  %90 = load i32, i32* @INT_REQ, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @GFX_INT_REQ, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SERV_INDEX(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
