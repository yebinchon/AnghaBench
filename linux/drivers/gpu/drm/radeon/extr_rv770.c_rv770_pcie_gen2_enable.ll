; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gen2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770.c_rv770_pcie_gen2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@radeon_pcie_gen2 = common dso_local global i64 0, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_IS_PCIE = common dso_local global i32 0, align 4
@PCIE_SPEED_5_0GT = common dso_local global i64 0, align 8
@PCIE_SPEED_8_0GT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [66 x i8] c"enabling PCIE gen 2 link speeds, disable with radeon.pcie_gen2=0\0A\00", align 1
@PCIE_LC_LINK_WIDTH_CNTL = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_DIS = common dso_local global i32 0, align 4
@LC_RENEGOTIATION_SUPPORT = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_MASK = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_RD_SHIFT = common dso_local global i32 0, align 4
@LC_LINK_WIDTH_MASK = common dso_local global i32 0, align 4
@LC_RECONFIG_ARC_MISSING_ESCAPE = common dso_local global i32 0, align 4
@LC_RECONFIG_NOW = common dso_local global i32 0, align 4
@LC_RENEGOTIATE_EN = common dso_local global i32 0, align 4
@LC_UPCONFIGURE_SUPPORT = common dso_local global i32 0, align 4
@PCIE_LC_SPEED_CNTL = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_EVER_SENT_GEN2 = common dso_local global i32 0, align 4
@LC_OTHER_SIDE_SUPPORTS_GEN2 = common dso_local global i32 0, align 4
@MM_CFGREGS_CNTL = common dso_local global i32 0, align 4
@MM_WR_TO_CFG_EN = common dso_local global i32 0, align 4
@TARGET_LINK_SPEED_MASK = common dso_local global i32 0, align 4
@LC_TARGET_LINK_SPEED_OVERRIDE_EN = common dso_local global i32 0, align 4
@LC_CLR_FAILED_SPD_CHANGE_CNT = common dso_local global i32 0, align 4
@LC_GEN2_EN_STRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rv770_pcie_gen2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rv770_pcie_gen2_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load i64, i64* @radeon_pcie_gen2, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %175

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RADEON_IS_IGP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %175

19:                                               ; preds = %11
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RADEON_IS_PCIE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %175

27:                                               ; preds = %19
  %28 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %29 = call i64 @ASIC_IS_X2(%struct.radeon_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %175

32:                                               ; preds = %27
  %33 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %34 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCIE_SPEED_5_0GT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %32
  %43 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %44 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PCIE_SPEED_8_0GT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %175

53:                                               ; preds = %42, %32
  %54 = call i32 @DRM_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %56 = call i32 @RREG32_PCIE_PORT(i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %62 = load i32, i32* %3, align 4
  %63 = call i32 @WREG32_PCIE_PORT(i32 %61, i32 %62)
  %64 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %65 = call i32 @RREG32_PCIE_PORT(i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @LC_RENEGOTIATION_SUPPORT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %94

70:                                               ; preds = %53
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @LC_LINK_WIDTH_RD_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @LC_LINK_WIDTH_RD_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @LC_LINK_WIDTH_MASK, align 4
  %77 = load i32, i32* @LC_RECONFIG_ARC_MISSING_ESCAPE, align 4
  %78 = or i32 %76, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @LC_RECONFIG_NOW, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @LC_RENEGOTIATE_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @LC_UPCONFIGURE_SUPPORT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %3, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %92 = load i32, i32* %3, align 4
  %93 = call i32 @WREG32_PCIE_PORT(i32 %91, i32 %92)
  br label %101

94:                                               ; preds = %53
  %95 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %96 = load i32, i32* %3, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @WREG32_PCIE_PORT(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %94, %70
  %102 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %103 = call i32 @RREG32_PCIE_PORT(i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @LC_OTHER_SIDE_EVER_SENT_GEN2, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %166

108:                                              ; preds = %101
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @LC_OTHER_SIDE_SUPPORTS_GEN2, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %166

113:                                              ; preds = %108
  %114 = call i32 @RREG32(i32 21532)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, 8
  %117 = call i32 @WREG32(i32 21532, i32 %116)
  %118 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %119 = load i32, i32* @MM_WR_TO_CFG_EN, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  %121 = call i32 @RREG16(i32 16520)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @TARGET_LINK_SPEED_MASK, align 4
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = or i32 %126, 2
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @WREG16(i32 16520, i32 %128)
  %130 = load i32, i32* @MM_CFGREGS_CNTL, align 4
  %131 = call i32 @WREG32(i32 %130, i32 0)
  %132 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %133 = call i32 @RREG32_PCIE_PORT(i32 %132)
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* @LC_TARGET_LINK_SPEED_OVERRIDE_EN, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @WREG32_PCIE_PORT(i32 %138, i32 %139)
  %141 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %142 = call i32 @RREG32_PCIE_PORT(i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @WREG32_PCIE_PORT(i32 %146, i32 %147)
  %149 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %150 = call i32 @RREG32_PCIE_PORT(i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* @LC_CLR_FAILED_SPD_CHANGE_CNT, align 4
  %152 = xor i32 %151, -1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, %152
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i32 @WREG32_PCIE_PORT(i32 %155, i32 %156)
  %158 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %159 = call i32 @RREG32_PCIE_PORT(i32 %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* @LC_GEN2_EN_STRAP, align 4
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @PCIE_LC_SPEED_CNTL, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @WREG32_PCIE_PORT(i32 %163, i32 %164)
  br label %175

166:                                              ; preds = %108, %101
  %167 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %168 = call i32 @RREG32_PCIE_PORT(i32 %167)
  store i32 %168, i32* %3, align 4
  %169 = load i32, i32* @LC_UPCONFIGURE_DIS, align 4
  %170 = load i32, i32* %3, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %3, align 4
  %172 = load i32, i32* @PCIE_LC_LINK_WIDTH_CNTL, align 4
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @WREG32_PCIE_PORT(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %10, %18, %26, %31, %52, %166, %113
  ret void
}

declare dso_local i64 @ASIC_IS_X2(%struct.radeon_device*) #1

declare dso_local i32 @DRM_INFO(i8*) #1

declare dso_local i32 @RREG32_PCIE_PORT(i32) #1

declare dso_local i32 @WREG32_PCIE_PORT(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG16(i32) #1

declare dso_local i32 @WREG16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
