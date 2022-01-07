; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_parse_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/volt/extr_base.c_nvkm_volt_parse_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { i32 }
%struct.nvkm_volt = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.nvbios_volt_entry = type { i64, i32 }
%struct.nvbios_volt = type { i32, i64, i64, i32, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [25 x i8] c"found ranged based VIDs\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"found entry based VIDs\0A\00", align 1
@NVBIOS_VOLT_PWM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_bios*, %struct.nvkm_volt*)* @nvkm_volt_parse_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_volt_parse_bios(%struct.nvkm_bios* %0, %struct.nvkm_volt* %1) #0 {
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvkm_volt*, align 8
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvbios_volt_entry, align 8
  %7 = alloca %struct.nvbios_volt, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  store %struct.nvkm_volt* %1, %struct.nvkm_volt** %4, align 8
  %14 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %5, align 8
  %16 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %17 = call i64 @nvbios_volt_parse(%struct.nvkm_bios* %16, i32* %8, i32* %9, i32* %10, i32* %11, %struct.nvbios_volt* %7)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %105

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %105

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %105

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 7
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %105

36:                                               ; preds = %32
  %37 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %38 = call i32 @nvkm_debug(%struct.nvkm_subdev* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %39 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %42 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %46 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %13, align 4
  br label %47

47:                                               ; preds = %97, %36
  %48 = load i32, i32* %13, align 4
  %49 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %100

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = icmp sge i64 %55, %58
  br i1 %59, label %60, label %91

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %71 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %74 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i64 %69, i64* %77, align 8
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %80 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %79, i32 0, i32 4
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %83 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %78, i32* %86, align 8
  %87 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %88 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %88, align 8
  br label %91

91:                                               ; preds = %67, %60, %53
  %92 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %93
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %47

100:                                              ; preds = %47
  %101 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %104 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %208

105:                                              ; preds = %32, %28, %24, %20, %2
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %183

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %183

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 7
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %183, label %116

116:                                              ; preds = %112
  %117 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %118 = call i32 @nvkm_debug(%struct.nvkm_subdev* %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %120 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 8
  %121 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %122 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %175, %116
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %178

127:                                              ; preds = %123
  %128 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i64 @nvbios_volt_entry_parse(%struct.nvkm_bios* %128, i32 %129, i32* %8, i32* %9, %struct.nvbios_volt_entry* %6)
  store i64 %130, i64* %12, align 8
  %131 = load i64, i64* %12, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %174

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.nvbios_volt_entry, %struct.nvbios_volt_entry* %6, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %137 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %136, i32 0, i32 4
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %140 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  store i64 %135, i64* %143, align 8
  %144 = getelementptr inbounds %struct.nvbios_volt_entry, %struct.nvbios_volt_entry* %6, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %147 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %146, i32 0, i32 4
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %150 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i32 %145, i32* %153, align 8
  %154 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %155 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %159 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.nvbios_volt_entry, %struct.nvbios_volt_entry* %6, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @min(i32 %160, i64 %162)
  %164 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %165 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  %166 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %167 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.nvbios_volt_entry, %struct.nvbios_volt_entry* %6, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @max(i32 %168, i64 %170)
  %172 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %173 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %133, %127
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %123

178:                                              ; preds = %123
  %179 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %182 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  br label %207

183:                                              ; preds = %112, %108, %105
  %184 = load i64, i64* %12, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 5
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @NVBIOS_VOLT_PWM, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %206

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %196 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %195, i32 0, i32 0
  store i32 %194, i32* %196, align 8
  %197 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.nvbios_volt, %struct.nvbios_volt* %7, i32 0, i32 6
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %198, %201
  %203 = trunc i64 %202 to i32
  %204 = load %struct.nvkm_volt*, %struct.nvkm_volt** %4, align 8
  %205 = getelementptr inbounds %struct.nvkm_volt, %struct.nvkm_volt* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %191, %186, %183
  br label %207

207:                                              ; preds = %206, %178
  br label %208

208:                                              ; preds = %207, %100
  ret void
}

declare dso_local i64 @nvbios_volt_parse(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, %struct.nvbios_volt*) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i64 @nvbios_volt_entry_parse(%struct.nvkm_bios*, i32, i32*, i32*, %struct.nvbios_volt_entry*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @max(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
