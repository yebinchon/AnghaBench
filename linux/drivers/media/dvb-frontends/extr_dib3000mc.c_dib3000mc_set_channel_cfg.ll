; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_channel_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib3000mc.c_dib3000mc_set_channel_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib3000mc_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32 }

@boost = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib3000mc_state*, %struct.dtv_frontend_properties*, i32)* @dib3000mc_set_channel_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib3000mc_set_channel_cfg(%struct.dib3000mc_state* %0, %struct.dtv_frontend_properties* %1, i32 %2) #0 {
  %4 = alloca %struct.dib3000mc_state*, align 8
  %5 = alloca %struct.dtv_frontend_properties*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dib3000mc_state* %0, %struct.dib3000mc_state** %4, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %10 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BANDWIDTH_TO_KHZ(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state* %13, i32 %14)
  %16 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %17 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %18 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @dib3000mc_set_timing(%struct.dib3000mc_state* %16, i32 %19, i32 %20, i32 0)
  %22 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %23 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %22, i32 100, i32 1033)
  %24 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %25 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %24, i32 1027, i32 2048)
  %26 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %27 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %26, i32 1027, i32 0)
  %28 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %29 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %28, i32 26, i32 26240)
  %30 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %31 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %30, i32 29, i32 4723)
  %32 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %33 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %32, i32 33, i32 5)
  %34 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %35 = call i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state* %34, i32 132)
  %36 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %37 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %36, i32 133, i32 15564)
  %38 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %39 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %38, i32 12, i32 0)
  %40 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %41 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %40, i32 13, i32 1000)
  %42 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %43 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %42, i32 14, i32 0)
  %44 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %45 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %44, i32 15, i32 1010)
  %46 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %47 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %46, i32 93, i32 0)
  %48 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %49 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %48, i32 94, i32 0)
  %50 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %51 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %50, i32 95, i32 0)
  %52 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %53 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %52, i32 96, i32 0)
  %54 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %55 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %54, i32 97, i32 0)
  %56 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %57 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %56, i32 98, i32 0)
  %58 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %58, i32 0, i32 %61)
  store i32 0, i32* %7, align 4
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %68 [
    i32 129, label %66
    i32 128, label %69
  ]

66:                                               ; preds = %3
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %7, align 4
  br label %72

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %3, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 128
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %84 [
    i32 138, label %76
    i32 139, label %78
    i32 137, label %81
    i32 136, label %85
  ]

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %7, align 4
  br label %88

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, 32
  store i32 %80, i32* %7, align 4
  br label %88

81:                                               ; preds = %72
  %82 = load i32, i32* %7, align 4
  %83 = or i32 %82, 96
  store i32 %83, i32* %7, align 4
  br label %88

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %72, %84
  %86 = load i32, i32* %7, align 4
  %87 = or i32 %86, 64
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %85, %81, %78, %76
  %89 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %90 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %97 [
    i32 130, label %92
    i32 132, label %94
    i32 131, label %98
  ]

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %7, align 4
  br label %101

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, 8
  store i32 %96, i32* %7, align 4
  br label %101

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %88, %97
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, 16
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %94, %92
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, 1
  store i32 %103, i32* %7, align 4
  %104 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %104, i32 0, i32 %105)
  %107 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 15
  %110 = shl i32 %109, 4
  %111 = or i32 256, %110
  %112 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %107, i32 5, i32 %111)
  store i32 0, i32* %7, align 4
  %113 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %114 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %120

117:                                              ; preds = %101
  %118 = load i32, i32* %7, align 4
  %119 = or i32 %118, 16
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %101
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, 1
  store i32 %122, i32* %7, align 4
  %123 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %124 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %120
  br i1 true, label %128, label %132

128:                                              ; preds = %127, %120
  %129 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %130 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  br label %136

132:                                              ; preds = %127
  %133 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %134 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = phi i32 [ %131, %128 ], [ %135, %132 ]
  switch i32 %137, label %150 [
    i32 143, label %138
    i32 142, label %141
    i32 141, label %144
    i32 140, label %147
    i32 144, label %151
  ]

138:                                              ; preds = %136
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, 4
  store i32 %140, i32* %7, align 4
  br label %154

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, 6
  store i32 %143, i32* %7, align 4
  br label %154

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, 10
  store i32 %146, i32* %7, align 4
  br label %154

147:                                              ; preds = %136
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, 14
  store i32 %149, i32* %7, align 4
  br label %154

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %136, %150
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, 2
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %151, %147, %144, %141, %138
  %155 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %155, i32 181, i32 %156)
  %158 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %159 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  switch i32 %160, label %163 [
    i32 128, label %161
    i32 129, label %162
  ]

161:                                              ; preds = %154
  store i32 256, i32* %7, align 4
  br label %164

162:                                              ; preds = %154
  br label %163

163:                                              ; preds = %154, %162
  store i32 64, i32* %7, align 4
  br label %164

164:                                              ; preds = %163, %161
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %177 [
    i32 139, label %168
    i32 136, label %171
    i32 137, label %174
    i32 138, label %178
  ]

168:                                              ; preds = %164
  %169 = load i32, i32* %7, align 4
  %170 = mul nsw i32 %169, 2
  store i32 %170, i32* %7, align 4
  br label %181

171:                                              ; preds = %164
  %172 = load i32, i32* %7, align 4
  %173 = mul nsw i32 %172, 4
  store i32 %173, i32* %7, align 4
  br label %181

174:                                              ; preds = %164
  %175 = load i32, i32* %7, align 4
  %176 = mul nsw i32 %175, 8
  store i32 %176, i32* %7, align 4
  br label %181

177:                                              ; preds = %164
  br label %178

178:                                              ; preds = %164, %177
  %179 = load i32, i32* %7, align 4
  %180 = mul nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  br label %181

181:                                              ; preds = %178, %174, %171, %168
  %182 = load i32, i32* %7, align 4
  %183 = shl i32 %182, 4
  store i32 %183, i32* %7, align 4
  %184 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %185 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %184, i32 180)
  %186 = and i32 %185, 15
  %187 = load i32, i32* %7, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %7, align 4
  %189 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %190 = load i32, i32* %7, align 4
  %191 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %189, i32 180, i32 %190)
  %192 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %193 = call i32 @dib3000mc_read_word(%struct.dib3000mc_state* %192, i32 0)
  store i32 %193, i32* %7, align 4
  %194 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %195 = load i32, i32* %7, align 4
  %196 = or i32 %195, 512
  %197 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %194, i32 0, i32 %196)
  %198 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @dib3000mc_write_word(%struct.dib3000mc_state* %198, i32 0, i32 %199)
  %201 = call i32 @msleep(i32 30)
  %202 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %203 = load %struct.dib3000mc_state*, %struct.dib3000mc_state** %4, align 8
  %204 = getelementptr inbounds %struct.dib3000mc_state, %struct.dib3000mc_state* %203, i32 0, i32 0
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %5, align 8
  %209 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state* %202, i32 %207, i32 %210)
  ret void
}

declare dso_local i32 @BANDWIDTH_TO_KHZ(i32) #1

declare dso_local i32 @dib3000mc_set_bandwidth(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_timing(%struct.dib3000mc_state*, i32, i32, i32) #1

declare dso_local i32 @dib3000mc_write_word(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_set_adp_cfg(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @dib3000mc_set_impulse_noise(%struct.dib3000mc_state*, i32, i32) #1

declare dso_local i32 @dib3000mc_read_word(%struct.dib3000mc_state*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
