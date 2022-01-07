; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_extsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mcde/extr_mcde_display.c_mcde_configure_extsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcde = type { i32, i32 }

@MCDE_EXTSRC0CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC0CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC1CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC1CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC2CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC2CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC3CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC3CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC4CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC4CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC5CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC5CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC6CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC6CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC7CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC7CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC8CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC8CR = common dso_local global i32 0, align 4
@MCDE_EXTSRC9CONF = common dso_local global i32 0, align 4
@MCDE_EXTSRC9CR = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BUF_ID_SHIFT = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BUF_NB_SHIFT = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_PRI_OVLID_SHIFT = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_ARGB8888 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_SHIFT = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BGR = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_XRGB8888 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_RGB888 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_ARGB4444 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_RGB444 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_IRGB1555 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_RGB565 = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCONF_BPP_YCBCR422 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown pixel format 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCR_SEL_MOD_SOFTWARE_SEL = common dso_local global i32 0, align 4
@MCDE_EXTSRCXCR_MULTIOVL_CTRL_PRIMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcde*, i32, i32)* @mcde_configure_extsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcde_configure_extsrc(%struct.mcde* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcde*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mcde* %0, %struct.mcde** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %42 [
    i32 137, label %12
    i32 136, label %15
    i32 135, label %18
    i32 134, label %21
    i32 133, label %24
    i32 132, label %27
    i32 131, label %30
    i32 130, label %33
    i32 129, label %36
    i32 128, label %39
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @MCDE_EXTSRC0CONF, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @MCDE_EXTSRC0CR, align 4
  store i32 %14, i32* %10, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load i32, i32* @MCDE_EXTSRC1CONF, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @MCDE_EXTSRC1CR, align 4
  store i32 %17, i32* %10, align 4
  br label %42

18:                                               ; preds = %3
  %19 = load i32, i32* @MCDE_EXTSRC2CONF, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @MCDE_EXTSRC2CR, align 4
  store i32 %20, i32* %10, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load i32, i32* @MCDE_EXTSRC3CONF, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @MCDE_EXTSRC3CR, align 4
  store i32 %23, i32* %10, align 4
  br label %42

24:                                               ; preds = %3
  %25 = load i32, i32* @MCDE_EXTSRC4CONF, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @MCDE_EXTSRC4CR, align 4
  store i32 %26, i32* %10, align 4
  br label %42

27:                                               ; preds = %3
  %28 = load i32, i32* @MCDE_EXTSRC5CONF, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @MCDE_EXTSRC5CR, align 4
  store i32 %29, i32* %10, align 4
  br label %42

30:                                               ; preds = %3
  %31 = load i32, i32* @MCDE_EXTSRC6CONF, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @MCDE_EXTSRC6CR, align 4
  store i32 %32, i32* %10, align 4
  br label %42

33:                                               ; preds = %3
  %34 = load i32, i32* @MCDE_EXTSRC7CONF, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* @MCDE_EXTSRC7CR, align 4
  store i32 %35, i32* %10, align 4
  br label %42

36:                                               ; preds = %3
  %37 = load i32, i32* @MCDE_EXTSRC8CONF, align 4
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* @MCDE_EXTSRC8CR, align 4
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %3
  %40 = load i32, i32* @MCDE_EXTSRC9CONF, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @MCDE_EXTSRC9CR, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %3, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12
  %43 = load i32, i32* @MCDE_EXTSRCXCONF_BUF_ID_SHIFT, align 4
  %44 = shl i32 0, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @MCDE_EXTSRCXCONF_BUF_NB_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* @MCDE_EXTSRCXCONF_PRI_OVLID_SHIFT, align 4
  %50 = shl i32 0, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  switch i32 %53, label %165 [
    i32 149, label %54
    i32 151, label %63
    i32 139, label %69
    i32 142, label %78
    i32 145, label %84
    i32 147, label %93
    i32 150, label %99
    i32 152, label %108
    i32 140, label %114
    i32 143, label %123
    i32 141, label %129
    i32 144, label %138
    i32 146, label %144
    i32 148, label %153
    i32 138, label %159
  ]

54:                                               ; preds = %42
  %55 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_ARGB8888, align 4
  %56 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %173

63:                                               ; preds = %42
  %64 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_ARGB8888, align 4
  %65 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  br label %173

69:                                               ; preds = %42
  %70 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_XRGB8888, align 4
  %71 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %173

78:                                               ; preds = %42
  %79 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_XRGB8888, align 4
  %80 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  br label %173

84:                                               ; preds = %42
  %85 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB888, align 4
  %86 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %87 = shl i32 %85, %86
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %173

93:                                               ; preds = %42
  %94 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB888, align 4
  %95 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* %8, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %8, align 4
  br label %173

99:                                               ; preds = %42
  %100 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_ARGB4444, align 4
  %101 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %173

108:                                              ; preds = %42
  %109 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_ARGB4444, align 4
  %110 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  br label %173

114:                                              ; preds = %42
  %115 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB444, align 4
  %116 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %121 = load i32, i32* %8, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %8, align 4
  br label %173

123:                                              ; preds = %42
  %124 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB444, align 4
  %125 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %126 = shl i32 %124, %125
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %173

129:                                              ; preds = %42
  %130 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_IRGB1555, align 4
  %131 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %173

138:                                              ; preds = %42
  %139 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_IRGB1555, align 4
  %140 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %173

144:                                              ; preds = %42
  %145 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB565, align 4
  %146 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @MCDE_EXTSRCXCONF_BGR, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %173

153:                                              ; preds = %42
  %154 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_RGB565, align 4
  %155 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %8, align 4
  br label %173

159:                                              ; preds = %42
  %160 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_YCBCR422, align 4
  %161 = load i32, i32* @MCDE_EXTSRCXCONF_BPP_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %173

165:                                              ; preds = %42
  %166 = load %struct.mcde*, %struct.mcde** %5, align 8
  %167 = getelementptr inbounds %struct.mcde, %struct.mcde* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @dev_err(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %4, align 4
  br label %192

173:                                              ; preds = %159, %153, %144, %138, %129, %123, %114, %108, %99, %93, %84, %78, %69, %63, %54
  %174 = load i32, i32* %8, align 4
  %175 = load %struct.mcde*, %struct.mcde** %5, align 8
  %176 = getelementptr inbounds %struct.mcde, %struct.mcde* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %177, %178
  %180 = call i32 @writel(i32 %174, i32 %179)
  %181 = load i32, i32* @MCDE_EXTSRCXCR_SEL_MOD_SOFTWARE_SEL, align 4
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* @MCDE_EXTSRCXCR_MULTIOVL_CTRL_PRIMARY, align 4
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = load %struct.mcde*, %struct.mcde** %5, align 8
  %187 = getelementptr inbounds %struct.mcde, %struct.mcde* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @writel(i32 %185, i32 %190)
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %173, %165
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
