; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_check_fan_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_check_fan_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_sio_data = type { i64, i32 }
%struct.w83627ehf_data = type { i32, i32 }

@w83627uhg = common dso_local global i64 0, align 8
@nct6775 = common dso_local global i64 0, align 8
@nct6776 = common dso_local global i64 0, align 8
@W83627EHF_LD_HWM = common dso_local global i32 0, align 4
@SIO_REG_ENABLE = common dso_local global i32 0, align 4
@w83667hg = common dso_local global i64 0, align 8
@w83667hg_b = common dso_local global i64 0, align 8
@W83627EHF_REG_FANDIV1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w83627ehf_sio_data*, %struct.w83627ehf_data*)* @w83627ehf_check_fan_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w83627ehf_check_fan_inputs(%struct.w83627ehf_sio_data* %0, %struct.w83627ehf_data* %1) #0 {
  %3 = alloca %struct.w83627ehf_sio_data*, align 8
  %4 = alloca %struct.w83627ehf_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.w83627ehf_sio_data* %0, %struct.w83627ehf_sio_data** %3, align 8
  store %struct.w83627ehf_data* %1, %struct.w83627ehf_data** %4, align 8
  %11 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @w83627uhg, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %18 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %17, i32 0, i32 0
  store i32 3, i32* %18, align 4
  %19 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %20 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %19, i32 0, i32 1
  store i32 3, i32* %20, align 4
  br label %233

21:                                               ; preds = %2
  %22 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %23 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @nct6775, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  %28 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %29 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @superio_inb(i32 %30, i32 42)
  %32 = and i32 %31, 128
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %150

36:                                               ; preds = %21
  %37 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %38 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @nct6776, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %106

42:                                               ; preds = %36
  %43 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %44 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @superio_inb(i32 %45, i32 39)
  %47 = and i32 %46, 128
  store i32 %47, i32* %10, align 4
  %48 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %49 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @W83627EHF_LD_HWM, align 4
  %52 = call i32 @superio_select(i32 %50, i32 %51)
  %53 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %54 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @SIO_REG_ENABLE, align 4
  %57 = call i32 @superio_inb(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 128
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %42
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %42
  %64 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %65 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @superio_inb(i32 %66, i32 36)
  %68 = and i32 %67, 64
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %63, %61
  %73 = load i32, i32* %9, align 4
  %74 = and i32 %73, 64
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %6, align 4
  br label %88

78:                                               ; preds = %72
  %79 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %80 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @superio_inb(i32 %81, i32 28)
  %83 = and i32 %82, 1
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %78, %76
  %89 = load i32, i32* %9, align 4
  %90 = and i32 %89, 32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %8, align 4
  br label %104

94:                                               ; preds = %88
  %95 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %96 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @superio_inb(i32 %97, i32 28)
  %99 = and i32 %98, 2
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %94, %92
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %7, align 4
  br label %149

106:                                              ; preds = %36
  %107 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %108 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @w83667hg, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %118, label %112

112:                                              ; preds = %106
  %113 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %114 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @w83667hg_b, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112, %106
  store i32 1, i32* %5, align 4
  %119 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %120 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @superio_inb(i32 %121, i32 39)
  %123 = and i32 %122, 64
  store i32 %123, i32* %6, align 4
  %124 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %125 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @superio_inb(i32 %126, i32 39)
  %128 = and i32 %127, 32
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %7, align 4
  br label %148

130:                                              ; preds = %112
  store i32 1, i32* %5, align 4
  %131 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %132 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @superio_inb(i32 %133, i32 41)
  %135 = and i32 %134, 6
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %6, align 4
  %139 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %140 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @superio_inb(i32 %141, i32 36)
  %143 = and i32 %142, 2
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %6, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %130, %118
  br label %149

149:                                              ; preds = %148, %104
  br label %150

150:                                              ; preds = %149, %27
  %151 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %152 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %151, i32 0, i32 1
  store i32 3, i32* %152, align 4
  %153 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %154 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %153, i32 0, i32 0
  store i32 3, i32* %154, align 4
  %155 = load i32, i32* %5, align 4
  %156 = shl i32 %155, 2
  %157 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %158 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %5, align 4
  %162 = shl i32 %161, 2
  %163 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %164 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %168 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @nct6775, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %150
  %173 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %3, align 8
  %174 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @nct6776, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %197

178:                                              ; preds = %172, %150
  %179 = load i32, i32* %6, align 4
  %180 = shl i32 %179, 3
  %181 = load i32, i32* %8, align 4
  %182 = shl i32 %181, 4
  %183 = or i32 %180, %182
  %184 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %185 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = or i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load i32, i32* %7, align 4
  %189 = shl i32 %188, 3
  %190 = load i32, i32* %8, align 4
  %191 = shl i32 %190, 4
  %192 = or i32 %189, %191
  %193 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %194 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %233

197:                                              ; preds = %172
  %198 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %199 = load i32, i32* @W83627EHF_REG_FANDIV1, align 4
  %200 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %198, i32 %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %197
  %205 = load i32, i32* %6, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %209 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, 8
  store i32 %211, i32* %209, align 4
  %212 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %213 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, 8
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %207, %204, %197
  %217 = load i32, i32* %9, align 4
  %218 = and i32 %217, 2
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %225 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, 16
  store i32 %227, i32* %225, align 4
  %228 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %4, align 8
  %229 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = or i32 %230, 16
  store i32 %231, i32* %229, align 4
  br label %232

232:                                              ; preds = %223, %220, %216
  br label %233

233:                                              ; preds = %16, %232, %178
  ret void
}

declare dso_local i32 @superio_inb(i32, i32) #1

declare dso_local i32 @superio_select(i32, i32) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
