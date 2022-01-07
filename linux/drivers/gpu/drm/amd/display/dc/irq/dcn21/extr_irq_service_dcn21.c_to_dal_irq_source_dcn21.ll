; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dcn21/extr_irq_service_dcn21.c_to_dal_irq_source_dcn21.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/irq/dcn21/extr_irq_service_dcn21.c_to_dal_irq_source_dcn21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_service = type { i32 }

@DC_IRQ_SOURCE_VBLANK1 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VBLANK2 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VBLANK3 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VBLANK4 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VBLANK5 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VBLANK6 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP1 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP2 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP3 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP4 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP5 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_PFLIP6 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE1 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE2 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE3 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE4 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE5 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_VUPDATE6 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD1 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD2 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD3 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD4 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD5 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD6 = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD1RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD2RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD3RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD4RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD5RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_HPD6RX = common dso_local global i32 0, align 4
@DC_IRQ_SOURCE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @to_dal_irq_source_dcn21(%struct.irq_service* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.irq_service*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_service* %0, %struct.irq_service** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %73 [
    i32 146, label %9
    i32 145, label %11
    i32 144, label %13
    i32 143, label %15
    i32 142, label %17
    i32 141, label %19
    i32 139, label %21
    i32 138, label %23
    i32 137, label %25
    i32 136, label %27
    i32 135, label %29
    i32 134, label %31
    i32 133, label %33
    i32 132, label %35
    i32 131, label %37
    i32 130, label %39
    i32 129, label %41
    i32 128, label %43
    i32 140, label %45
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @DC_IRQ_SOURCE_VBLANK1, align 4
  store i32 %10, i32* %4, align 4
  br label %76

11:                                               ; preds = %3
  %12 = load i32, i32* @DC_IRQ_SOURCE_VBLANK2, align 4
  store i32 %12, i32* %4, align 4
  br label %76

13:                                               ; preds = %3
  %14 = load i32, i32* @DC_IRQ_SOURCE_VBLANK3, align 4
  store i32 %14, i32* %4, align 4
  br label %76

15:                                               ; preds = %3
  %16 = load i32, i32* @DC_IRQ_SOURCE_VBLANK4, align 4
  store i32 %16, i32* %4, align 4
  br label %76

17:                                               ; preds = %3
  %18 = load i32, i32* @DC_IRQ_SOURCE_VBLANK5, align 4
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load i32, i32* @DC_IRQ_SOURCE_VBLANK6, align 4
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %3
  %22 = load i32, i32* @DC_IRQ_SOURCE_PFLIP1, align 4
  store i32 %22, i32* %4, align 4
  br label %76

23:                                               ; preds = %3
  %24 = load i32, i32* @DC_IRQ_SOURCE_PFLIP2, align 4
  store i32 %24, i32* %4, align 4
  br label %76

25:                                               ; preds = %3
  %26 = load i32, i32* @DC_IRQ_SOURCE_PFLIP3, align 4
  store i32 %26, i32* %4, align 4
  br label %76

27:                                               ; preds = %3
  %28 = load i32, i32* @DC_IRQ_SOURCE_PFLIP4, align 4
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %3
  %30 = load i32, i32* @DC_IRQ_SOURCE_PFLIP5, align 4
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load i32, i32* @DC_IRQ_SOURCE_PFLIP6, align 4
  store i32 %32, i32* %4, align 4
  br label %76

33:                                               ; preds = %3
  %34 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE1, align 4
  store i32 %34, i32* %4, align 4
  br label %76

35:                                               ; preds = %3
  %36 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE2, align 4
  store i32 %36, i32* %4, align 4
  br label %76

37:                                               ; preds = %3
  %38 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE3, align 4
  store i32 %38, i32* %4, align 4
  br label %76

39:                                               ; preds = %3
  %40 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE4, align 4
  store i32 %40, i32* %4, align 4
  br label %76

41:                                               ; preds = %3
  %42 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE5, align 4
  store i32 %42, i32* %4, align 4
  br label %76

43:                                               ; preds = %3
  %44 = load i32, i32* @DC_IRQ_SOURCE_VUPDATE6, align 4
  store i32 %44, i32* %4, align 4
  br label %76

45:                                               ; preds = %3
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %71 [
    i32 158, label %47
    i32 156, label %49
    i32 154, label %51
    i32 152, label %53
    i32 150, label %55
    i32 148, label %57
    i32 157, label %59
    i32 155, label %61
    i32 153, label %63
    i32 151, label %65
    i32 149, label %67
    i32 147, label %69
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* @DC_IRQ_SOURCE_HPD1, align 4
  store i32 %48, i32* %4, align 4
  br label %76

49:                                               ; preds = %45
  %50 = load i32, i32* @DC_IRQ_SOURCE_HPD2, align 4
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %45
  %52 = load i32, i32* @DC_IRQ_SOURCE_HPD3, align 4
  store i32 %52, i32* %4, align 4
  br label %76

53:                                               ; preds = %45
  %54 = load i32, i32* @DC_IRQ_SOURCE_HPD4, align 4
  store i32 %54, i32* %4, align 4
  br label %76

55:                                               ; preds = %45
  %56 = load i32, i32* @DC_IRQ_SOURCE_HPD5, align 4
  store i32 %56, i32* %4, align 4
  br label %76

57:                                               ; preds = %45
  %58 = load i32, i32* @DC_IRQ_SOURCE_HPD6, align 4
  store i32 %58, i32* %4, align 4
  br label %76

59:                                               ; preds = %45
  %60 = load i32, i32* @DC_IRQ_SOURCE_HPD1RX, align 4
  store i32 %60, i32* %4, align 4
  br label %76

61:                                               ; preds = %45
  %62 = load i32, i32* @DC_IRQ_SOURCE_HPD2RX, align 4
  store i32 %62, i32* %4, align 4
  br label %76

63:                                               ; preds = %45
  %64 = load i32, i32* @DC_IRQ_SOURCE_HPD3RX, align 4
  store i32 %64, i32* %4, align 4
  br label %76

65:                                               ; preds = %45
  %66 = load i32, i32* @DC_IRQ_SOURCE_HPD4RX, align 4
  store i32 %66, i32* %4, align 4
  br label %76

67:                                               ; preds = %45
  %68 = load i32, i32* @DC_IRQ_SOURCE_HPD5RX, align 4
  store i32 %68, i32* %4, align 4
  br label %76

69:                                               ; preds = %45
  %70 = load i32, i32* @DC_IRQ_SOURCE_HPD6RX, align 4
  store i32 %70, i32* %4, align 4
  br label %76

71:                                               ; preds = %45
  %72 = load i32, i32* @DC_IRQ_SOURCE_INVALID, align 4
  store i32 %72, i32* %4, align 4
  br label %76

73:                                               ; preds = %3
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @DC_IRQ_SOURCE_INVALID, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
