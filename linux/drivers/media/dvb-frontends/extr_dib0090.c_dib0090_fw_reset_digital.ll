; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_reset_digital.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib0090.c_dib0090_fw_reset_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib0090_fw_state* }
%struct.dib0090_fw_state = type { i32 }
%struct.dib0090_config = type { i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"fw reset digital\0A\00", align 1
@EN_PLL = common dso_local global i32 0, align 4
@EN_CRYSTAL = common dso_local global i32 0, align 4
@EN_DIGCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Pll: Unable to lock Pll\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dib0090_config*)* @dib0090_fw_reset_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0090_fw_reset_digital(%struct.dvb_frontend* %0, %struct.dib0090_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dib0090_config*, align 8
  %6 = alloca %struct.dib0090_fw_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dib0090_config* %1, %struct.dib0090_config** %5, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %11, align 8
  store %struct.dib0090_fw_state* %12, %struct.dib0090_fw_state** %6, align 8
  %13 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %15 = call i32 @HARD_RESET(%struct.dib0090_fw_state* %14)
  %16 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %17 = load i32, i32* @EN_PLL, align 4
  %18 = load i32, i32* @EN_CRYSTAL, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %16, i32 36, i32 %19)
  %21 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %22 = load i32, i32* @EN_DIGCLK, align 4
  %23 = load i32, i32* @EN_PLL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @EN_CRYSTAL, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %21, i32 27, i32 %26)
  %28 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %29 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %30 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 11
  %35 = or i32 %34, 512
  %36 = or i32 %35, 256
  %37 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %38 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 4
  %41 = or i32 %36, %40
  %42 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %43 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  %46 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %28, i32 32, i32 %45)
  %47 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %48 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = shl i32 %52, 14
  %54 = or i32 0, %53
  %55 = or i32 %54, 512
  %56 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %57 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 4
  %60 = or i32 %55, %59
  store i32 %60, i32* %8, align 4
  %61 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %62 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %2
  %66 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %67 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 5
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  br label %75

72:                                               ; preds = %2
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, 224
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %72, %65
  %76 = load i32, i32* %8, align 4
  %77 = or i32 %76, 2048
  store i32 %77, i32* %8, align 4
  %78 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %78, i32 35, i32 %79)
  %81 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %82 = call i32 @dib0090_fw_read_reg(%struct.dib0090_fw_state* %81, i32 33)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = and i32 %83, 8191
  %85 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %86 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 12
  %90 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %91 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 6
  %95 = or i32 %89, %94
  %96 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %97 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %96, i32 0, i32 4
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %95, %99
  %101 = icmp ne i32 %84, %100
  br i1 %101, label %102, label %173

102:                                              ; preds = %75
  %103 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %104 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %103, i32 0, i32 4
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %173, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %7, align 4
  %110 = or i32 %109, 32768
  store i32 %110, i32* %7, align 4
  %111 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %111, i32 33, i32 %112)
  %114 = load i32, i32* %7, align 4
  %115 = and i32 %114, -8193
  store i32 %115, i32* %7, align 4
  %116 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %116, i32 33, i32 %117)
  %119 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %120 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 12
  %124 = or i32 32768, %123
  %125 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %126 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 6
  %130 = or i32 %124, %129
  %131 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %132 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %130, %134
  store i32 %135, i32* %7, align 4
  %136 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %136, i32 33, i32 %137)
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, 8192
  store i32 %140, i32* %7, align 4
  %141 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %141, i32 33, i32 %142)
  store i32 100, i32* %9, align 4
  br label %144

144:                                              ; preds = %156, %108
  %145 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %146 = call i32 @dib0090_fw_read_reg(%struct.dib0090_fw_state* %145, i32 26)
  %147 = and i32 %146, 2048
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %144
  br label %160

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %9, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %144, label %160

160:                                              ; preds = %156, %154
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %160
  %164 = call i32 @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %165 = load i32, i32* @EIO, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %193

167:                                              ; preds = %160
  %168 = load i32, i32* %7, align 4
  %169 = and i32 %168, -32769
  store i32 %169, i32* %7, align 4
  %170 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %170, i32 33, i32 %171)
  br label %173

173:                                              ; preds = %167, %102, %75
  %174 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %175 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %173
  %180 = load %struct.dib0090_config*, %struct.dib0090_config** %5, align 8
  %181 = getelementptr inbounds %struct.dib0090_config, %struct.dib0090_config* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 15
  %185 = load i32, i32* %7, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %7, align 4
  %187 = load %struct.dib0090_fw_state*, %struct.dib0090_fw_state** %6, align 8
  %188 = load i32, i32* %7, align 4
  %189 = call i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state* %187, i32 33, i32 %188)
  br label %190

190:                                              ; preds = %179, %173
  %191 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %192 = call i32 @dib0090_fw_identify(%struct.dvb_frontend* %191)
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %190, %163
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @HARD_RESET(%struct.dib0090_fw_state*) #1

declare dso_local i32 @dib0090_fw_write_reg(%struct.dib0090_fw_state*, i32, i32) #1

declare dso_local i32 @dib0090_fw_read_reg(%struct.dib0090_fw_state*, i32) #1

declare dso_local i32 @dib0090_fw_identify(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
