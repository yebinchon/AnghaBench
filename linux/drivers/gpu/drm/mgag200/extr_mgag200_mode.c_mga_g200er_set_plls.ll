; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200er_set_plls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mgag200/extr_mgag200_mode.c_mga_g200er_set_plls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mga_device = type { i32 }

@__const.mga_g200er_set_plls.m_div_val = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 4, i32 8], align 16
@DAC_INDEX = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL = common dso_local global i32 0, align 4
@DAC_DATA = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_DIS = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL = common dso_local global i32 0, align 4
@MGA1064_REMHEADCTL_CLKDIS = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_READ = common dso_local global i32 0, align 4
@MGAREG_MEM_MISC_WRITE = common dso_local global i32 0, align 4
@MGA1064_PIX_CLK_CTL_CLK_POW_DOWN = common dso_local global i32 0, align 4
@MGA1064_ER_PIX_PLLC_N = common dso_local global i32 0, align 4
@MGA1064_ER_PIX_PLLC_M = common dso_local global i32 0, align 4
@MGA1064_ER_PIX_PLLC_P = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mga_device*, i64)* @mga_g200er_set_plls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mga_g200er_set_plls(%struct.mga_device* %0, i64 %1) #0 {
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [4 x i32], align 16
  store %struct.mga_device* %0, %struct.mga_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %21 = bitcast [4 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.mga_g200er_set_plls.m_div_val to i8*), i64 16, i1 false)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 1488000, i32* %5, align 4
  store i32 1056000, i32* %6, align 4
  store i32 48000, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %120, %2
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 4
  br i1 %24, label %25, label %123

25:                                               ; preds = %22
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %123

29:                                               ; preds = %25
  store i32 5, i32* %11, align 4
  br label %30

30:                                               ; preds = %116, %29
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 129
  br i1 %32, label %33, label %119

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %119

37:                                               ; preds = %33
  store i32 3, i32* %12, align 4
  br label %38

38:                                               ; preds = %112, %37
  %39 = load i32, i32* %12, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %115

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %115

45:                                               ; preds = %41
  store i32 5, i32* %13, align 4
  br label %46

46:                                               ; preds = %108, %45
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 33
  br i1 %48, label %49, label %111

49:                                               ; preds = %46
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = mul i32 %50, %52
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  %56 = udiv i32 %53, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %108

61:                                               ; preds = %49
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %108

66:                                               ; preds = %61
  %67 = load i32, i32* %18, align 4
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = mul i32 %71, %73
  %75 = udiv i32 %67, %74
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = zext i32 %76 to i64
  %78 = load i64, i64* %4, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %66
  %81 = load i32, i32* %17, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %4, align 8
  %84 = sub nsw i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %9, align 4
  br label %92

86:                                               ; preds = %66
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* %17, align 4
  %89 = zext i32 %88 to i64
  %90 = sub nsw i64 %87, %89
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %9, align 4
  br label %92

92:                                               ; preds = %86, %80
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp ult i32 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i32, i32* %9, align 4
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = shl i32 %99, 3
  %101 = or i32 %98, %100
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %16, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 %104, 3
  %106 = or i32 %103, %105
  store i32 %106, i32* %14, align 4
  br label %107

107:                                              ; preds = %96, %92
  br label %108

108:                                              ; preds = %107, %65, %60
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %46

111:                                              ; preds = %46
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %12, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %12, align 4
  br label %38

115:                                              ; preds = %44, %38
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %30

119:                                              ; preds = %36, %30
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %22

123:                                              ; preds = %28, %22
  %124 = load i32, i32* @DAC_INDEX, align 4
  %125 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %126 = call i32 @WREG8(i32 %124, i32 %125)
  %127 = load i32, i32* @DAC_DATA, align 4
  %128 = call i32 @RREG8(i32 %127)
  store i32 %128, i32* %19, align 4
  %129 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %130 = load i32, i32* %19, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* @DAC_DATA, align 4
  %133 = load i32, i32* %19, align 4
  %134 = call i32 @WREG8(i32 %132, i32 %133)
  %135 = load i32, i32* @DAC_INDEX, align 4
  %136 = load i32, i32* @MGA1064_REMHEADCTL, align 4
  %137 = call i32 @WREG8(i32 %135, i32 %136)
  %138 = load i32, i32* @DAC_DATA, align 4
  %139 = call i32 @RREG8(i32 %138)
  store i32 %139, i32* %19, align 4
  %140 = load i32, i32* @MGA1064_REMHEADCTL_CLKDIS, align 4
  %141 = load i32, i32* %19, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %19, align 4
  %143 = load i32, i32* @DAC_DATA, align 4
  %144 = load i32, i32* %19, align 4
  %145 = call i32 @WREG8(i32 %143, i32 %144)
  %146 = load i32, i32* @MGAREG_MEM_MISC_READ, align 4
  %147 = call i32 @RREG8(i32 %146)
  store i32 %147, i32* %19, align 4
  %148 = load i32, i32* %19, align 4
  %149 = or i32 %148, 204
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* @MGAREG_MEM_MISC_WRITE, align 4
  %151 = load i32, i32* %19, align 4
  %152 = call i32 @WREG8(i32 %150, i32 %151)
  %153 = load i32, i32* @DAC_INDEX, align 4
  %154 = load i32, i32* @MGA1064_PIX_CLK_CTL, align 4
  %155 = call i32 @WREG8(i32 %153, i32 %154)
  %156 = load i32, i32* @DAC_DATA, align 4
  %157 = call i32 @RREG8(i32 %156)
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_DIS, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %19, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %19, align 4
  %162 = load i32, i32* @MGA1064_PIX_CLK_CTL_CLK_POW_DOWN, align 4
  %163 = load i32, i32* %19, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %19, align 4
  %165 = load i32, i32* @DAC_DATA, align 4
  %166 = load i32, i32* %19, align 4
  %167 = call i32 @WREG8(i32 %165, i32 %166)
  %168 = call i32 @udelay(i32 500)
  %169 = load i32, i32* @MGA1064_ER_PIX_PLLC_N, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @WREG_DAC(i32 %169, i32 %170)
  %172 = load i32, i32* @MGA1064_ER_PIX_PLLC_M, align 4
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @WREG_DAC(i32 %172, i32 %173)
  %175 = load i32, i32* @MGA1064_ER_PIX_PLLC_P, align 4
  %176 = load i32, i32* %14, align 4
  %177 = call i32 @WREG_DAC(i32 %175, i32 %176)
  %178 = call i32 @udelay(i32 50)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @WREG8(i32, i32) #2

declare dso_local i32 @RREG8(i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @WREG_DAC(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
