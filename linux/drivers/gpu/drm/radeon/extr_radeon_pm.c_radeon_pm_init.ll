; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_pm.c_radeon_pm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_dpm_quirk = type { i64, i64, i64, i64 }
%struct.radeon_device = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }

@radeon_dpm_quirk_list = common dso_local global %struct.radeon_dpm_quirk* null, align 8
@PM_METHOD_PROFILE = common dso_local global i8* null, align 8
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@radeon_dpm = common dso_local global i32 0, align 4
@PM_METHOD_DPM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_pm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_dpm_quirk*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** @radeon_dpm_quirk_list, align 8
  store %struct.radeon_dpm_quirk* %6, %struct.radeon_dpm_quirk** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %9 = icmp ne %struct.radeon_dpm_quirk* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i1 [ false, %7 ], [ %14, %10 ]
  br i1 %16, label %17, label %61

17:                                               ; preds = %15
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %58

27:                                               ; preds = %17
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %27
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %44 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %49 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %48, i32 0, i32 5
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %54 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %61

58:                                               ; preds = %47, %37, %27, %17
  %59 = load %struct.radeon_dpm_quirk*, %struct.radeon_dpm_quirk** %4, align 8
  %60 = getelementptr inbounds %struct.radeon_dpm_quirk, %struct.radeon_dpm_quirk* %59, i32 1
  store %struct.radeon_dpm_quirk* %60, %struct.radeon_dpm_quirk** %4, align 8
  br label %7

61:                                               ; preds = %57, %15
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %180 [
    i32 141, label %65
    i32 139, label %65
    i32 140, label %65
    i32 138, label %65
    i32 137, label %65
    i32 143, label %65
    i32 142, label %65
    i32 133, label %65
    i32 135, label %116
    i32 136, label %116
    i32 134, label %116
    i32 156, label %116
    i32 144, label %116
    i32 151, label %116
    i32 155, label %116
    i32 152, label %116
    i32 146, label %116
    i32 132, label %116
    i32 131, label %116
    i32 160, label %116
    i32 129, label %116
    i32 158, label %116
    i32 157, label %116
    i32 161, label %116
    i32 130, label %116
    i32 145, label %116
    i32 128, label %116
    i32 147, label %116
    i32 154, label %116
    i32 159, label %116
    i32 150, label %116
    i32 149, label %116
    i32 153, label %116
    i32 148, label %116
  ]

65:                                               ; preds = %61, %61, %61, %61, %61, %61, %61, %61
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  br label %115

76:                                               ; preds = %65
  %77 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 133
  br i1 %80, label %81, label %99

81:                                               ; preds = %76
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RADEON_IS_IGP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %81
  %89 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %88
  %94 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %97 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  br label %114

99:                                               ; preds = %88, %81, %76
  %100 = load i32, i32* @radeon_dpm, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i64, i64* @PM_METHOD_DPM, align 8
  %104 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %105 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  br label %113

107:                                              ; preds = %99
  %108 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %102
  br label %114

114:                                              ; preds = %113, %93
  br label %115

115:                                              ; preds = %114, %70
  br label %186

116:                                              ; preds = %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61, %61
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %116
  %122 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %125 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  br label %179

127:                                              ; preds = %116
  %128 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %129 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp sge i32 %130, 133
  br i1 %131, label %132, label %150

132:                                              ; preds = %127
  %133 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %134 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @RADEON_IS_IGP, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %132
  %140 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %141 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %146 = ptrtoint i8* %145 to i64
  %147 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %148 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  store i64 %146, i64* %149, align 8
  br label %178

150:                                              ; preds = %139, %132, %127
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %150
  %154 = load i32, i32* @radeon_dpm, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %160 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i64 %158, i64* %161, align 8
  br label %177

162:                                              ; preds = %153, %150
  %163 = load i32, i32* @radeon_dpm, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %167 = ptrtoint i8* %166 to i64
  %168 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %169 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  br label %176

171:                                              ; preds = %162
  %172 = load i64, i64* @PM_METHOD_DPM, align 8
  %173 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %174 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i64 %172, i64* %175, align 8
  br label %176

176:                                              ; preds = %171, %165
  br label %177

177:                                              ; preds = %176, %156
  br label %178

178:                                              ; preds = %177, %144
  br label %179

179:                                              ; preds = %178, %121
  br label %186

180:                                              ; preds = %61
  %181 = load i8*, i8** @PM_METHOD_PROFILE, align 8
  %182 = ptrtoint i8* %181 to i64
  %183 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %184 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  store i64 %182, i64* %185, align 8
  br label %186

186:                                              ; preds = %180, %179, %115
  %187 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %188 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PM_METHOD_DPM, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %195 = call i32 @radeon_pm_init_dpm(%struct.radeon_device* %194)
  store i32 %195, i32* %2, align 4
  br label %199

196:                                              ; preds = %186
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = call i32 @radeon_pm_init_old(%struct.radeon_device* %197)
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @radeon_pm_init_dpm(%struct.radeon_device*) #1

declare dso_local i32 @radeon_pm_init_old(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
