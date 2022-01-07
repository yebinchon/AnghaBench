; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_reset_digital.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_reset_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_state* }
%struct.dib0090_state = type { i32 }
%struct.dib0090_config = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@EN_PLL = common dso_local global i32 0, align 4
@EN_CRYSTAL = common dso_local global i32 0, align 4
@EN_DIGCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Pll: Unable to lock Pll\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*, %struct.dib0090_config*)* @dib0090_reset_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib0090_reset_digital(%struct.dvb_frontend* %0, %struct.dib0090_config* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dib0090_config*, align 8
  %5 = alloca %struct.dib0090_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dib0090_config* %1, %struct.dib0090_config** %4, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 0
  %11 = load %struct.dib0090_state*, %struct.dib0090_state** %10, align 8
  store %struct.dib0090_state* %11, %struct.dib0090_state** %5, align 8
  %12 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %13 = call i32 @HARD_RESET(%struct.dib0090_state* %12)
  %14 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %15 = load i32, i32* @EN_PLL, align 4
  %16 = load i32, i32* @EN_CRYSTAL, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @dib0090_write_reg(%struct.dib0090_state* %14, i32 36, i32 %17)
  %19 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %20 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %201

24:                                               ; preds = %2
  %25 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %26 = load i32, i32* @EN_DIGCLK, align 4
  %27 = load i32, i32* @EN_PLL, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EN_CRYSTAL, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @dib0090_write_reg(%struct.dib0090_state* %25, i32 27, i32 %30)
  %32 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %33 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %34 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = shl i32 %37, 11
  %39 = or i32 %38, 512
  %40 = or i32 %39, 256
  %41 = call i32 @dib0090_write_reg(%struct.dib0090_state* %32, i32 32, i32 %40)
  %42 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %43 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %24
  %47 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %48 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %49 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = shl i32 %53, 14
  %55 = or i32 0, %54
  %56 = or i32 %55, 2048
  %57 = or i32 %56, 512
  %58 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %59 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %60, 5
  %62 = or i32 %57, %61
  %63 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %64 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  %67 = or i32 %62, %66
  %68 = call i32 @dib0090_write_reg(%struct.dib0090_state* %47, i32 35, i32 %67)
  br label %88

69:                                               ; preds = %24
  %70 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %71 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %72 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = shl i32 %76, 14
  %78 = or i32 0, %77
  %79 = or i32 %78, 2048
  %80 = or i32 %79, 512
  %81 = or i32 %80, 224
  %82 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %83 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 4
  %86 = or i32 %81, %85
  %87 = call i32 @dib0090_write_reg(%struct.dib0090_state* %70, i32 35, i32 %86)
  br label %88

88:                                               ; preds = %69, %46
  %89 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %90 = call i32 @dib0090_read_reg(%struct.dib0090_state* %89, i32 33)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = and i32 %91, 8191
  %93 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %94 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 12
  %98 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %99 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = shl i32 %101, 6
  %103 = or i32 %97, %102
  %104 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %105 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %103, %107
  %109 = icmp ne i32 %92, %108
  br i1 %109, label %110, label %184

110:                                              ; preds = %88
  %111 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %112 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %184, label %115

115:                                              ; preds = %110
  %116 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %117 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %184, label %121

121:                                              ; preds = %115
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, 32768
  store i32 %123, i32* %6, align 4
  %124 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @dib0090_write_reg(%struct.dib0090_state* %124, i32 33, i32 %125)
  %127 = load i32, i32* %6, align 4
  %128 = and i32 %127, -8193
  store i32 %128, i32* %6, align 4
  %129 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @dib0090_write_reg(%struct.dib0090_state* %129, i32 33, i32 %130)
  %132 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %133 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 12
  %137 = or i32 32768, %136
  %138 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %139 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %141, 6
  %143 = or i32 %137, %142
  %144 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %145 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %143, %147
  store i32 %148, i32* %6, align 4
  %149 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @dib0090_write_reg(%struct.dib0090_state* %149, i32 33, i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = or i32 %152, 8192
  store i32 %153, i32* %6, align 4
  %154 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @dib0090_write_reg(%struct.dib0090_state* %154, i32 33, i32 %155)
  store i32 100, i32* %7, align 4
  br label %157

157:                                              ; preds = %169, %121
  %158 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %159 = call i32 @dib0090_read_reg(%struct.dib0090_state* %158, i32 26)
  %160 = and i32 %159, 2048
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %173

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, -1
  store i32 %171, i32* %7, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %157, label %173

173:                                              ; preds = %169, %167
  %174 = load i32, i32* %7, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %201

178:                                              ; preds = %173
  %179 = load i32, i32* %6, align 4
  %180 = and i32 %179, -32769
  store i32 %180, i32* %6, align 4
  %181 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @dib0090_write_reg(%struct.dib0090_state* %181, i32 33, i32 %182)
  br label %184

184:                                              ; preds = %178, %115, %110, %88
  %185 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %186 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %201

190:                                              ; preds = %184
  %191 = load %struct.dib0090_config*, %struct.dib0090_config** %4, align 8
  %192 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = shl i32 %194, 15
  %196 = load i32, i32* %6, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %6, align 4
  %198 = load %struct.dib0090_state*, %struct.dib0090_state** %5, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @dib0090_write_reg(%struct.dib0090_state* %198, i32 33, i32 %199)
  br label %201

201:                                              ; preds = %23, %176, %190, %184
  ret void
}

declare dso_local i32 @HARD_RESET(%struct.dib0090_state*) #1

declare dso_local i32 @dib0090_write_reg(%struct.dib0090_state*, i32, i32) #1

declare dso_local i32 @dib0090_read_reg(%struct.dib0090_state*, i32) #1

declare dso_local i32 @dprintk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
