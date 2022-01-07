; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_set_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda998x_drv.c_tda998x_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda998x_priv = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32* }
%struct.tda998x_encoder_params = type { %struct.TYPE_3__, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32 }

@VIP_CNTRL_0_MIRR_A = common dso_local global i32 0, align 4
@VIP_CNTRL_0_MIRR_B = common dso_local global i32 0, align 4
@VIP_CNTRL_1_MIRR_C = common dso_local global i32 0, align 4
@VIP_CNTRL_1_MIRR_D = common dso_local global i32 0, align 4
@VIP_CNTRL_2_MIRR_E = common dso_local global i32 0, align 4
@VIP_CNTRL_2_MIRR_F = common dso_local global i32 0, align 4
@AFMT_UNUSED = common dso_local global i64 0, align 8
@AFMT_SPDIF = common dso_local global i64 0, align 8
@AUDIO_ROUTE_I2S = common dso_local global i32 0, align 4
@tda998x_audio_route = common dso_local global i32* null, align 8
@I2S_FORMAT_PHILIPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda998x_priv*, %struct.tda998x_encoder_params*)* @tda998x_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda998x_set_config(%struct.tda998x_priv* %0, %struct.tda998x_encoder_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tda998x_priv*, align 8
  %5 = alloca %struct.tda998x_encoder_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tda998x_priv* %0, %struct.tda998x_priv** %4, align 8
  store %struct.tda998x_encoder_params* %1, %struct.tda998x_encoder_params** %5, align 8
  %9 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %10 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @VIP_CNTRL_0_SWAP_A(i32 %11)
  %13 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %14 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @VIP_CNTRL_0_MIRR_A, align 4
  br label %20

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = or i32 %12, %21
  %23 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %24 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @VIP_CNTRL_0_SWAP_B(i32 %25)
  %27 = or i32 %22, %26
  %28 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %29 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @VIP_CNTRL_0_MIRR_B, align 4
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = or i32 %27, %36
  %38 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %39 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %41 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @VIP_CNTRL_1_SWAP_C(i32 %42)
  %44 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %45 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @VIP_CNTRL_1_MIRR_C, align 4
  br label %51

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %43, %52
  %54 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %55 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @VIP_CNTRL_1_SWAP_D(i32 %56)
  %58 = or i32 %53, %57
  %59 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %60 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @VIP_CNTRL_1_MIRR_D, align 4
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %63
  %67 = phi i32 [ %64, %63 ], [ 0, %65 ]
  %68 = or i32 %58, %67
  %69 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %70 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %72 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @VIP_CNTRL_2_SWAP_E(i32 %73)
  %75 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %76 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @VIP_CNTRL_2_MIRR_E, align 4
  br label %82

81:                                               ; preds = %66
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = or i32 %74, %83
  %85 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %86 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @VIP_CNTRL_2_SWAP_F(i32 %87)
  %89 = or i32 %84, %88
  %90 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %91 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %82
  %95 = load i32, i32* @VIP_CNTRL_2_MIRR_F, align 4
  br label %97

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96, %94
  %98 = phi i32 [ %95, %94 ], [ 0, %96 ]
  %99 = or i32 %89, %98
  %100 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %101 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %103 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @AFMT_UNUSED, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %177

108:                                              ; preds = %97
  %109 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %110 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AFMT_SPDIF, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @AUDIO_ROUTE_I2S, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %7, align 4
  %119 = load i32*, i32** @tda998x_audio_route, align 8
  %120 = load i32, i32* %7, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %124 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  store i32* %122, i32** %125, align 8
  %126 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %127 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %131 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  store i32 %129, i32* %132, align 8
  %133 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %134 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %138 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %141 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %145 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @min(i32 4, i32 4)
  %149 = call i32 @memcpy(i32 %143, i32 %147, i32 %148)
  %150 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %151 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %155 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @I2S_FORMAT_PHILIPS, align 4
  %158 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %159 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  %161 = load i32, i32* %8, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %108
  br label %170

164:                                              ; preds = %108
  %165 = load %struct.tda998x_encoder_params*, %struct.tda998x_encoder_params** %5, align 8
  %166 = getelementptr inbounds %struct.tda998x_encoder_params, %struct.tda998x_encoder_params* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = mul nsw i32 %168, 2
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ 64, %163 ], [ %169, %164 ]
  store i32 %171, i32* %6, align 4
  %172 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %173 = load %struct.tda998x_priv*, %struct.tda998x_priv** %4, align 8
  %174 = getelementptr inbounds %struct.tda998x_priv, %struct.tda998x_priv* %173, i32 0, i32 3
  %175 = load i32, i32* %6, align 4
  %176 = call i32 @tda998x_derive_cts_n(%struct.tda998x_priv* %172, %struct.TYPE_4__* %174, i32 %175)
  store i32 %176, i32* %3, align 4
  br label %178

177:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %178

178:                                              ; preds = %177, %170
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @VIP_CNTRL_0_SWAP_A(i32) #1

declare dso_local i32 @VIP_CNTRL_0_SWAP_B(i32) #1

declare dso_local i32 @VIP_CNTRL_1_SWAP_C(i32) #1

declare dso_local i32 @VIP_CNTRL_1_SWAP_D(i32) #1

declare dso_local i32 @VIP_CNTRL_2_SWAP_E(i32) #1

declare dso_local i32 @VIP_CNTRL_2_SWAP_F(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @tda998x_derive_cts_n(%struct.tda998x_priv*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
