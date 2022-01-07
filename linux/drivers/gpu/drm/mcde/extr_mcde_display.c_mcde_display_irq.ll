; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_display_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i64, i64, i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@MCDE_MISPP = common dso_local global i64 0, align 8
@MCDE_MISOVL = common dso_local global i64 0, align 8
@MCDE_MISCHNL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"TE0 IRQ\0A\00", align 1
@MCDE_CRA0 = common dso_local global i64 0, align 8
@MCDE_CRX0_FLOEN = common dso_local global i32 0, align 4
@MCDE_PP_VCMPA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"chnl A vblank IRQ\0A\00", align 1
@MCDE_PP_VCMPB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"chnl B vblank IRQ\0A\00", align 1
@MCDE_PP_VCMPC0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"chnl C0 vblank IRQ\0A\00", align 1
@MCDE_PP_VCMPC1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"chnl C1 vblank IRQ\0A\00", align 1
@MCDE_PP_VSCC0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"chnl C0 TE IRQ\0A\00", align 1
@MCDE_PP_VSCC1 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [16 x i8] c"chnl C1 TE IRQ\0A\00", align 1
@MCDE_RISPP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"some stray overlay IRQ %08x\0A\00", align 1
@MCDE_RISOVL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [35 x i8] c"some stray channel error IRQ %08x\0A\00", align 1
@MCDE_RISCHNL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mcde_display_irq(%struct.mcde* %0) #0 {
  %2 = alloca %struct.mcde*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %2, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.mcde*, %struct.mcde** %2, align 8
  %9 = getelementptr inbounds %struct.mcde, %struct.mcde* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MCDE_MISPP, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.mcde*, %struct.mcde** %2, align 8
  %15 = getelementptr inbounds %struct.mcde, %struct.mcde* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MCDE_MISOVL, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mcde*, %struct.mcde** %2, align 8
  %21 = getelementptr inbounds %struct.mcde, %struct.mcde* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MCDE_MISCHNL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mcde*, %struct.mcde** %2, align 8
  %27 = getelementptr inbounds %struct.mcde, %struct.mcde* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @mcde_dsi_irq(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %1
  %32 = load %struct.mcde*, %struct.mcde** %2, align 8
  %33 = getelementptr inbounds %struct.mcde, %struct.mcde* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %31
  %37 = load %struct.mcde*, %struct.mcde** %2, align 8
  %38 = getelementptr inbounds %struct.mcde, %struct.mcde* %37, i32 0, i32 4
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load %struct.mcde*, %struct.mcde** %2, align 8
  %41 = getelementptr inbounds %struct.mcde, %struct.mcde* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %36
  %46 = load %struct.mcde*, %struct.mcde** %2, align 8
  %47 = getelementptr inbounds %struct.mcde, %struct.mcde* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dev_dbg(i32 %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.mcde*, %struct.mcde** %2, align 8
  %51 = getelementptr inbounds %struct.mcde, %struct.mcde* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MCDE_CRA0, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @MCDE_CRX0_FLOEN, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.mcde*, %struct.mcde** %2, align 8
  %62 = getelementptr inbounds %struct.mcde, %struct.mcde* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MCDE_CRA0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %45, %36
  %68 = load %struct.mcde*, %struct.mcde** %2, align 8
  %69 = getelementptr inbounds %struct.mcde, %struct.mcde* %68, i32 0, i32 4
  %70 = call i32 @spin_unlock(i32* %69)
  br label %71

71:                                               ; preds = %67, %31
  br label %72

72:                                               ; preds = %71, %1
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* @MCDE_PP_VCMPA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.mcde*, %struct.mcde** %2, align 8
  %79 = getelementptr inbounds %struct.mcde, %struct.mcde* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_dbg(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @MCDE_PP_VCMPB, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.mcde*, %struct.mcde** %2, align 8
  %89 = getelementptr inbounds %struct.mcde, %struct.mcde* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %92

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @MCDE_PP_VCMPC0, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.mcde*, %struct.mcde** %2, align 8
  %99 = getelementptr inbounds %struct.mcde, %struct.mcde* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @dev_dbg(i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %102

102:                                              ; preds = %97, %92
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* @MCDE_PP_VCMPC1, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.mcde*, %struct.mcde** %2, align 8
  %109 = getelementptr inbounds %struct.mcde, %struct.mcde* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @dev_dbg(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %102
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @MCDE_PP_VSCC0, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = load %struct.mcde*, %struct.mcde** %2, align 8
  %119 = getelementptr inbounds %struct.mcde, %struct.mcde* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  br label %122

122:                                              ; preds = %117, %112
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* @MCDE_PP_VSCC1, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.mcde*, %struct.mcde** %2, align 8
  %129 = getelementptr inbounds %struct.mcde, %struct.mcde* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dev_dbg(i32 %130, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  br label %132

132:                                              ; preds = %127, %122
  %133 = load i32, i32* %3, align 4
  %134 = load %struct.mcde*, %struct.mcde** %2, align 8
  %135 = getelementptr inbounds %struct.mcde, %struct.mcde* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @MCDE_RISPP, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @writel(i32 %133, i64 %138)
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %132
  %143 = load %struct.mcde*, %struct.mcde** %2, align 8
  %144 = getelementptr inbounds %struct.mcde, %struct.mcde* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 @drm_crtc_handle_vblank(i32* %145)
  br label %147

147:                                              ; preds = %142, %132
  %148 = load i32, i32* %4, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %147
  %151 = load %struct.mcde*, %struct.mcde** %2, align 8
  %152 = getelementptr inbounds %struct.mcde, %struct.mcde* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @dev_info(i32 %153, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %150, %147
  %157 = load i32, i32* %4, align 4
  %158 = load %struct.mcde*, %struct.mcde** %2, align 8
  %159 = getelementptr inbounds %struct.mcde, %struct.mcde* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @MCDE_RISOVL, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @writel(i32 %157, i64 %162)
  %164 = load i32, i32* %5, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %156
  %167 = load %struct.mcde*, %struct.mcde** %2, align 8
  %168 = getelementptr inbounds %struct.mcde, %struct.mcde* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i32 @dev_info(i32 %169, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %166, %156
  %173 = load i32, i32* %5, align 4
  %174 = load %struct.mcde*, %struct.mcde** %2, align 8
  %175 = getelementptr inbounds %struct.mcde, %struct.mcde* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @MCDE_RISCHNL, align 8
  %178 = add nsw i64 %176, %177
  %179 = call i32 @writel(i32 %173, i64 %178)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @mcde_dsi_irq(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
