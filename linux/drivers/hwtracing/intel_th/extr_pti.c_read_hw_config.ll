; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_read_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_pti.c_read_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pti_device = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@REG_PTI_CTL = common dso_local global i64 0, align 8
@PTI_MODE = common dso_local global i32 0, align 4
@PTI_CLKDIV = common dso_local global i32 0, align 4
@PTI_FCEN = common dso_local global i32 0, align 4
@pti_mode = common dso_local global i32* null, align 8
@GTH_LPP = common dso_local global i64 0, align 8
@LPP_PTIPRESENT = common dso_local global i32 0, align 4
@LPP_DEST_PTI = common dso_local global i32 0, align 4
@LPP_BSSBPRESENT = common dso_local global i32 0, align 4
@LPP_DEST_EXI = common dso_local global i32 0, align 4
@LPP_DEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pti_device*)* @read_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_hw_config(%struct.pti_device* %0) #0 {
  %2 = alloca %struct.pti_device*, align 8
  %3 = alloca i32, align 4
  store %struct.pti_device* %0, %struct.pti_device** %2, align 8
  %4 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %5 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @REG_PTI_CTL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @ioread32(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @PTI_MODE, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PTI_MODE, align 4
  %14 = call i32 @__ffs(i32 %13)
  %15 = ashr i32 %12, %14
  %16 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %17 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @PTI_CLKDIV, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @PTI_CLKDIV, align 4
  %22 = call i32 @__ffs(i32 %21)
  %23 = ashr i32 %20, %22
  %24 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %25 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PTI_FCEN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %34 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32*, i32** @pti_mode, align 8
  %36 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %37 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %1
  %44 = call i64 @pti_width_mode(i32 4)
  %45 = trunc i64 %44 to i32
  %46 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %47 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %43, %1
  %49 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %50 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %55 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %58 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %57, i32 0, i32 5
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GTH_LPP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %96

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @LPP_PTIPRESENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* @LPP_DEST_PTI, align 4
  %72 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %73 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @LPP_BSSBPRESENT, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* @LPP_DEST_EXI, align 4
  %83 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %84 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %76
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @LPP_DEST, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.pti_device*, %struct.pti_device** %2, align 8
  %94 = getelementptr inbounds %struct.pti_device, %struct.pti_device* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87
  br label %96

96:                                               ; preds = %95, %56
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @pti_width_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
