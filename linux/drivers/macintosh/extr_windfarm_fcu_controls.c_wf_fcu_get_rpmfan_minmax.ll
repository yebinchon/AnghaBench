; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_get_rpmfan_minmax.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_get_rpmfan_minmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_fcu_fan = type { i32, i32, %struct.TYPE_2__, %struct.wf_fcu_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.wf_fcu_priv = type { i32 }
%struct.mpu_data = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"cpu-front-fan-0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"cpu-front-fan-1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-0\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"cpu-rear-fan-1\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"cpu-fan\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"wf_fcu: fan min/max for %s set to: [%d..%d] RPM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_fcu_fan*)* @wf_fcu_get_rpmfan_minmax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_fcu_get_rpmfan_minmax(%struct.wf_fcu_fan* %0) #0 {
  %2 = alloca %struct.wf_fcu_fan*, align 8
  %3 = alloca %struct.wf_fcu_priv*, align 8
  %4 = alloca %struct.mpu_data*, align 8
  %5 = alloca %struct.mpu_data*, align 8
  store %struct.wf_fcu_fan* %0, %struct.wf_fcu_fan** %2, align 8
  %6 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %7 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %6, i32 0, i32 3
  %8 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %7, align 8
  store %struct.wf_fcu_priv* %8, %struct.wf_fcu_priv** %3, align 8
  %9 = call %struct.mpu_data* @wf_get_mpu(i32 0)
  store %struct.mpu_data* %9, %struct.mpu_data** %4, align 8
  %10 = call %struct.mpu_data* @wf_get_mpu(i32 1)
  store %struct.mpu_data* %10, %struct.mpu_data** %5, align 8
  %11 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %12 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 2400, %13
  %15 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %16 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.wf_fcu_priv*, %struct.wf_fcu_priv** %3, align 8
  %18 = getelementptr inbounds %struct.wf_fcu_priv, %struct.wf_fcu_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 56000, %19
  %21 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %22 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %24 = icmp ne %struct.mpu_data* %23, null
  br i1 %24, label %25, label %55

25:                                               ; preds = %1
  %26 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %27 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @strcmp(i32 %29, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %55, label %32

32:                                               ; preds = %25
  %33 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %34 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %37 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i8* @max(i32 %35, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %43 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %45 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %48 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i8* @min(i32 %46, i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %54 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %185

55:                                               ; preds = %25, %1
  %56 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %57 = icmp ne %struct.mpu_data* %56, null
  br i1 %57, label %58, label %88

58:                                               ; preds = %55
  %59 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %60 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @strcmp(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %88, label %65

65:                                               ; preds = %58
  %66 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %67 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %70 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i8* @max(i32 %68, i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %76 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %78 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %81 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i8* @min(i32 %79, i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %87 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %185

88:                                               ; preds = %58, %55
  %89 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %90 = icmp ne %struct.mpu_data* %89, null
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %93 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strcmp(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %121, label %98

98:                                               ; preds = %91
  %99 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %100 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %103 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @max(i32 %101, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %109 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %111 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %114 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = call i8* @min(i32 %112, i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %120 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %185

121:                                              ; preds = %91, %88
  %122 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %123 = icmp ne %struct.mpu_data* %122, null
  br i1 %123, label %124, label %154

124:                                              ; preds = %121
  %125 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %126 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @strcmp(i32 %128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %154, label %131

131:                                              ; preds = %124
  %132 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %133 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %136 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i8* @max(i32 %134, i32 %138)
  %140 = ptrtoint i8* %139 to i32
  %141 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %142 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %144 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mpu_data*, %struct.mpu_data** %5, align 8
  %147 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i8* @min(i32 %145, i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %153 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  br label %185

154:                                              ; preds = %124, %121
  %155 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %156 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @strncmp(i32 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %184, label %161

161:                                              ; preds = %154
  %162 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %163 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %166 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = trunc i64 %167 to i32
  %169 = call i8* @max(i32 %164, i32 %168)
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %172 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  %173 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %174 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.mpu_data*, %struct.mpu_data** %4, align 8
  %177 = getelementptr inbounds %struct.mpu_data, %struct.mpu_data* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = call i8* @min(i32 %175, i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %183 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %182, i32 0, i32 1
  store i32 %181, i32* %183, align 4
  br label %185

184:                                              ; preds = %154
  br label %185

185:                                              ; preds = %184, %161, %131, %98, %65, %32
  %186 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %187 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %191 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %2, align 8
  %194 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @DBG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %189, i32 %192, i32 %195)
  ret void
}

declare dso_local %struct.mpu_data* @wf_get_mpu(i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
