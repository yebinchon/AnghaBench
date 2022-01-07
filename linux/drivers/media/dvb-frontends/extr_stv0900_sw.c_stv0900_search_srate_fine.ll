; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_search_srate_fine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_sw.c_stv0900_search_srate_fine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0900_state* }
%struct.stv0900_state = type { i32, %struct.stv0900_internal* }
%struct.stv0900_internal = type { i32, i32*, i32 }

@CFR2 = common dso_local global i32 0, align 4
@CFR1 = common dso_local global i32 0, align 4
@DMDISTATE = common dso_local global i32 0, align 4
@TMGCFG2 = common dso_local global i32 0, align 4
@TMGTHRISE = common dso_local global i32 0, align 4
@TMGTHFALL = common dso_local global i32 0, align 4
@TMGCFG = common dso_local global i32 0, align 4
@CFR_AUTOSCAN = common dso_local global i32 0, align 4
@AGC2REF = common dso_local global i32 0, align 4
@CARFREQ = common dso_local global i32 0, align 4
@SFRUP1 = common dso_local global i32 0, align 4
@SFRUP0 = common dso_local global i32 0, align 4
@SFRLOW1 = common dso_local global i32 0, align 4
@SFRLOW0 = common dso_local global i32 0, align 4
@SFRINIT1 = common dso_local global i32 0, align 4
@SFRINIT0 = common dso_local global i32 0, align 4
@DMDT0M = common dso_local global i32 0, align 4
@CFRINIT1 = common dso_local global i32 0, align 4
@CFRINIT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @stv0900_search_srate_fine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0900_search_srate_fine(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.stv0900_state*, align 8
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 0
  %14 = load %struct.stv0900_state*, %struct.stv0900_state** %13, align 8
  store %struct.stv0900_state* %14, %struct.stv0900_state** %3, align 8
  %15 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %16 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %15, i32 0, i32 1
  %17 = load %struct.stv0900_internal*, %struct.stv0900_internal** %16, align 8
  store %struct.stv0900_internal* %17, %struct.stv0900_internal** %4, align 8
  %18 = load %struct.stv0900_state*, %struct.stv0900_state** %3, align 8
  %19 = getelementptr inbounds %struct.stv0900_state, %struct.stv0900_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %22 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %23 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @stv0900_get_symbol_rate(%struct.stv0900_internal* %21, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 3000000
  br i1 %28, label %29, label %63

29:                                               ; preds = %1
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 10
  %32 = mul nsw i32 13, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 1000
  %35 = mul nsw i32 %34, 65536
  store i32 %35, i32* %9, align 4
  %36 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %37 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sdiv i32 %38, 1000
  %40 = load i32, i32* %9, align 4
  %41 = sdiv i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 13
  %44 = mul nsw i32 10, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 1000
  %47 = mul nsw i32 %46, 65536
  store i32 %47, i32* %10, align 4
  %48 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %49 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sdiv i32 %50, 1000
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %54, 1000
  %56 = mul nsw i32 %55, 65536
  store i32 %56, i32* %8, align 4
  %57 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %58 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sdiv i32 %59, 1000
  %61 = load i32, i32* %8, align 4
  %62 = sdiv i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %97

63:                                               ; preds = %1
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 10
  %66 = mul nsw i32 13, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sdiv i32 %67, 100
  %69 = mul nsw i32 %68, 65536
  store i32 %69, i32* %9, align 4
  %70 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %71 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 100
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sdiv i32 %76, 14
  %78 = mul nsw i32 10, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sdiv i32 %79, 100
  %81 = mul nsw i32 %80, 65536
  store i32 %81, i32* %10, align 4
  %82 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %83 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, 100
  %86 = load i32, i32* %10, align 4
  %87 = sdiv i32 %86, %85
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sdiv i32 %88, 100
  %90 = mul nsw i32 %89, 65536
  store i32 %90, i32* %8, align 4
  %91 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %92 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sdiv i32 %93, 100
  %95 = load i32, i32* %8, align 4
  %96 = sdiv i32 %95, %94
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %63, %29
  %98 = load i32, i32* %6, align 4
  %99 = sdiv i32 %98, 10
  %100 = mul nsw i32 13, %99
  store i32 %100, i32* %11, align 4
  %101 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %102 = load i32, i32* @CFR2, align 4
  %103 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %101, i32 %102)
  %104 = shl i32 %103, 8
  %105 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %106 = load i32, i32* @CFR1, align 4
  %107 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %105, i32 %106)
  %108 = or i32 %104, %107
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %111 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %5, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %109, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %97
  store i32 0, i32* %6, align 4
  br label %214

119:                                              ; preds = %97
  %120 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %121 = load i32, i32* @DMDISTATE, align 4
  %122 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %120, i32 %121, i32 31)
  %123 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %124 = load i32, i32* @TMGCFG2, align 4
  %125 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %123, i32 %124, i32 193)
  %126 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %127 = load i32, i32* @TMGTHRISE, align 4
  %128 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %126, i32 %127, i32 32)
  %129 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %130 = load i32, i32* @TMGTHFALL, align 4
  %131 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %129, i32 %130, i32 0)
  %132 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %133 = load i32, i32* @TMGCFG, align 4
  %134 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %132, i32 %133, i32 210)
  %135 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %136 = load i32, i32* @CFR_AUTOSCAN, align 4
  %137 = call i32 @stv0900_write_bits(%struct.stv0900_internal* %135, i32 %136, i32 0)
  %138 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %139 = load i32, i32* @AGC2REF, align 4
  %140 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %138, i32 %139, i32 56)
  %141 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %142 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = icmp sge i32 %143, 48
  br i1 %144, label %145, label %149

145:                                              ; preds = %119
  %146 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %147 = load i32, i32* @CARFREQ, align 4
  %148 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %146, i32 %147, i32 121)
  br label %163

149:                                              ; preds = %119
  %150 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %151 = getelementptr inbounds %struct.stv0900_internal, %struct.stv0900_internal* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = icmp sge i32 %152, 32
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %156 = load i32, i32* @CARFREQ, align 4
  %157 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %155, i32 %156, i32 73)
  br label %162

158:                                              ; preds = %149
  %159 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %160 = load i32, i32* @CARFREQ, align 4
  %161 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %159, i32 %160, i32 237)
  br label %162

162:                                              ; preds = %158, %154
  br label %163

163:                                              ; preds = %162, %145
  %164 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %165 = load i32, i32* @SFRUP1, align 4
  %166 = load i32, i32* %9, align 4
  %167 = ashr i32 %166, 8
  %168 = and i32 %167, 127
  %169 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %164, i32 %165, i32 %168)
  %170 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %171 = load i32, i32* @SFRUP0, align 4
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, 255
  %174 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %170, i32 %171, i32 %173)
  %175 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %176 = load i32, i32* @SFRLOW1, align 4
  %177 = load i32, i32* %10, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 127
  %180 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %175, i32 %176, i32 %179)
  %181 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %182 = load i32, i32* @SFRLOW0, align 4
  %183 = load i32, i32* %10, align 4
  %184 = and i32 %183, 255
  %185 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %181, i32 %182, i32 %184)
  %186 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %187 = load i32, i32* @SFRINIT1, align 4
  %188 = load i32, i32* %8, align 4
  %189 = ashr i32 %188, 8
  %190 = and i32 %189, 255
  %191 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %186, i32 %187, i32 %190)
  %192 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %193 = load i32, i32* @SFRINIT0, align 4
  %194 = load i32, i32* %8, align 4
  %195 = and i32 %194, 255
  %196 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %192, i32 %193, i32 %195)
  %197 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %198 = load i32, i32* @DMDT0M, align 4
  %199 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %197, i32 %198, i32 32)
  %200 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %201 = load i32, i32* @CFRINIT1, align 4
  %202 = load i32, i32* %7, align 4
  %203 = ashr i32 %202, 8
  %204 = and i32 %203, 255
  %205 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %200, i32 %201, i32 %204)
  %206 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %207 = load i32, i32* @CFRINIT0, align 4
  %208 = load i32, i32* %7, align 4
  %209 = and i32 %208, 255
  %210 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %206, i32 %207, i32 %209)
  %211 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %212 = load i32, i32* @DMDISTATE, align 4
  %213 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %211, i32 %212, i32 21)
  br label %214

214:                                              ; preds = %163, %118
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

declare dso_local i32 @stv0900_get_symbol_rate(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

declare dso_local i32 @stv0900_write_bits(%struct.stv0900_internal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
