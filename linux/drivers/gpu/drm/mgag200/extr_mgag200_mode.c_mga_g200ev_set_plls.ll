; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200ev_set_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200ev_set_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i32 }

@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_DIS = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_READ = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_WRITE = common dso_local global i32 0, align 4
@MGA1064_PIX_PLL_STAT = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_POW_DOWN = common dso_local global i32 0, align 4
@MGA1064_EV_PIX_PLLC_M = common dso_local global i32 0, align 4
@MGA1064_EV_PIX_PLLC_N = common dso_local global i32 0, align 4
@MGA1064_EV_PIX_PLLC_P = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_MSK = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_SEL_PLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mga_device*, i64)* @mga_g200ev_set_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_g200ev_set_plls(%struct.mga_device* %0, i64 %1) #0 {
  %3 = alloca %struct.mga_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 550000, i32* %5, align 4
  store i32 150000, i32* %6, align 4
  store i32 50000, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 16, i32* %10, align 4
  br label %18

18:                                               ; preds = %92, %2
  %19 = load i32, i32* %10, align 4
  %20 = icmp ugt i32 %19, 0
  br i1 %20, label %21, label %95

21:                                               ; preds = %18
  %22 = load i64, i64* %4, align 8
  %23 = load i32, i32* %10, align 4
  %24 = zext i32 %23 to i64
  %25 = mul nsw i64 %22, %24
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %92

30:                                               ; preds = %21
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = mul nsw i64 %31, %33
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = icmp slt i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %92

39:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %88, %39
  %41 = load i32, i32* %12, align 4
  %42 = icmp ult i32 %41, 257
  br i1 %42, label %43, label %91

43:                                               ; preds = %40
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %84, %43
  %45 = load i32, i32* %11, align 4
  %46 = icmp ult i32 %45, 17
  br i1 %46, label %47, label %87

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = mul i32 %51, %52
  %54 = udiv i32 %50, %53
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %4, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %47
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %4, align 8
  %63 = sub nsw i64 %61, %62
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %9, align 4
  br label %71

65:                                               ; preds = %47
  %66 = load i64, i64* %4, align 8
  %67 = load i32, i32* %16, align 4
  %68 = zext i32 %67 to i64
  %69 = sub nsw i64 %66, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %83

75:                                               ; preds = %71
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %77, 1
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %79, 1
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub i32 %81, 1
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %75, %71
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %11, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %11, align 4
  br label %44

87:                                               ; preds = %44
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %40

91:                                               ; preds = %40
  br label %92

92:                                               ; preds = %91, %38, %29
  %93 = load i32, i32* %10, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %10, align 4
  br label %18

95:                                               ; preds = %18
  %96 = load i32, i32* @DAC_INDEX, align 4
  %97 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %98 = call i32 @WREG8(i32 %96, i32 %97)
  %99 = load i32, i32* @DAC_DATA, align 4
  %100 = call i32 @RREG8(i32 %99)
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %102 = load i32, i32* %17, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* @DAC_DATA, align 4
  %105 = load i32, i32* %17, align 4
  %106 = call i32 @WREG8(i32 %104, i32 %105)
  %107 = load i32, i32* @MGAREG_MEM_MISC_READ, align 4
  %108 = call i32 @RREG8(i32 %107)
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = or i32 %109, 12
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* @MGAREG_MEM_MISC_WRITE, align 4
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @WREG8(i32 %111, i32 %112)
  %114 = load i32, i32* @DAC_INDEX, align 4
  %115 = load i32, i32* @MGA1064_PIX_PLL_STAT, align 4
  %116 = call i32 @WREG8(i32 %114, i32 %115)
  %117 = load i32, i32* @DAC_DATA, align 4
  %118 = call i32 @RREG8(i32 %117)
  store i32 %118, i32* %17, align 4
  %119 = load i32, i32* @DAC_DATA, align 4
  %120 = load i32, i32* %17, align 4
  %121 = and i32 %120, -65
  %122 = call i32 @WREG8(i32 %119, i32 %121)
  %123 = load i32, i32* @DAC_INDEX, align 4
  %124 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %125 = call i32 @WREG8(i32 %123, i32 %124)
  %126 = load i32, i32* @DAC_DATA, align 4
  %127 = call i32 @RREG8(i32 %126)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* @DAC_DATA, align 4
  %132 = load i32, i32* %17, align 4
  %133 = call i32 @WREG8(i32 %131, i32 %132)
  %134 = load i32, i32* @MGA1064_EV_PIX_PLLC_M, align 4
  %135 = load i32, i32* %14, align 4
  %136 = call i32 @WREG_DAC(i32 %134, i32 %135)
  %137 = load i32, i32* @MGA1064_EV_PIX_PLLC_N, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @WREG_DAC(i32 %137, i32 %138)
  %140 = load i32, i32* @MGA1064_EV_PIX_PLLC_P, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @WREG_DAC(i32 %140, i32 %141)
  %143 = call i32 @udelay(i32 50)
  %144 = load i32, i32* @DAC_INDEX, align 4
  %145 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %146 = call i32 @WREG8(i32 %144, i32 %145)
  %147 = load i32, i32* @DAC_DATA, align 4
  %148 = call i32 @RREG8(i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %150 = xor i32 %149, -1
  %151 = load i32, i32* %17, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* @DAC_DATA, align 4
  %154 = load i32, i32* %17, align 4
  %155 = call i32 @WREG8(i32 %153, i32 %154)
  %156 = call i32 @udelay(i32 500)
  %157 = load i32, i32* @DAC_INDEX, align 4
  %158 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %159 = call i32 @WREG8(i32 %157, i32 %158)
  %160 = load i32, i32* @DAC_DATA, align 4
  %161 = call i32 @RREG8(i32 %160)
  store i32 %161, i32* %17, align 4
  %162 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_MSK, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %17, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %17, align 4
  %166 = load i32, i32* @MGA1064_PIX_CLK_CTL_SEL_PLL, align 4
  %167 = load i32, i32* %17, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %17, align 4
  %169 = load i32, i32* @DAC_DATA, align 4
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @WREG8(i32 %169, i32 %170)
  %172 = load i32, i32* @DAC_INDEX, align 4
  %173 = load i32, i32* @MGA1064_PIX_PLL_STAT, align 4
  %174 = call i32 @WREG8(i32 %172, i32 %173)
  %175 = load i32, i32* @DAC_DATA, align 4
  %176 = call i32 @RREG8(i32 %175)
  store i32 %176, i32* %17, align 4
  %177 = load i32, i32* @DAC_DATA, align 4
  %178 = load i32, i32* %17, align 4
  %179 = or i32 %178, 64
  %180 = call i32 @WREG8(i32 %177, i32 %179)
  %181 = load i32, i32* @MGAREG_MEM_MISC_READ, align 4
  %182 = call i32 @RREG8(i32 %181)
  store i32 %182, i32* %17, align 4
  %183 = load i32, i32* %17, align 4
  %184 = or i32 %183, 12
  store i32 %184, i32* %17, align 4
  %185 = load i32, i32* @MGAREG_MEM_MISC_WRITE, align 4
  %186 = load i32, i32* %17, align 4
  %187 = call i32 @WREG8(i32 %185, i32 %186)
  %188 = load i32, i32* @DAC_INDEX, align 4
  %189 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %190 = call i32 @WREG8(i32 %188, i32 %189)
  %191 = load i32, i32* @DAC_DATA, align 4
  %192 = call i32 @RREG8(i32 %191)
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %194 = xor i32 %193, -1
  %195 = load i32, i32* %17, align 4
  %196 = and i32 %195, %194
  store i32 %196, i32* %17, align 4
  %197 = load i32, i32* @DAC_DATA, align 4
  %198 = load i32, i32* %17, align 4
  %199 = call i32 @WREG8(i32 %197, i32 %198)
  ret i32 0
}

declare dso_local i32 @WREG8(i32, i32) #1

declare dso_local i32 @RREG8(i32) #1

declare dso_local i32 @WREG_DAC(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
