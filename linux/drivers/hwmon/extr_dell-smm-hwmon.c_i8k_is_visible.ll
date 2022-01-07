; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_dell-smm-hwmon.c_i8k_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.attribute = type { i32 }

@disallow_fan_support = common dso_local global i64 0, align 8
@disallow_fan_type_call = common dso_local global i64 0, align 8
@i8k_hwmon_flags = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP1 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP2 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP3 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP4 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP5 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP6 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP7 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP8 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP9 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_TEMP10 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_FAN1 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_FAN2 = common dso_local global i32 0, align 4
@I8K_HWMON_HAVE_FAN3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @i8k_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8k_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i64, i64* @disallow_fan_support, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 8
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %187

14:                                               ; preds = %10, %3
  %15 = load i64, i64* @disallow_fan_type_call, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 12
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 15
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20, %17
  store i32 0, i32* %4, align 4
  br label %187

27:                                               ; preds = %23, %14
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp sle i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* @i8k_hwmon_flags, align 4
  %35 = load i32, i32* @I8K_HWMON_HAVE_TEMP1, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %187

39:                                               ; preds = %33, %30, %27
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load i32, i32* @i8k_hwmon_flags, align 4
  %47 = load i32, i32* @I8K_HWMON_HAVE_TEMP2, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %187

51:                                               ; preds = %45, %42, %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp sge i32 %52, 4
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %55, 5
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @i8k_hwmon_flags, align 4
  %59 = load i32, i32* @I8K_HWMON_HAVE_TEMP3, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %187

63:                                               ; preds = %57, %54, %51
  %64 = load i32, i32* %7, align 4
  %65 = icmp sge i32 %64, 6
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 7
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* @i8k_hwmon_flags, align 4
  %71 = load i32, i32* @I8K_HWMON_HAVE_TEMP4, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %187

75:                                               ; preds = %69, %66, %63
  %76 = load i32, i32* %7, align 4
  %77 = icmp sge i32 %76, 8
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp sle i32 %79, 9
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @i8k_hwmon_flags, align 4
  %83 = load i32, i32* @I8K_HWMON_HAVE_TEMP5, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %187

87:                                               ; preds = %81, %78, %75
  %88 = load i32, i32* %7, align 4
  %89 = icmp sge i32 %88, 10
  br i1 %89, label %90, label %99

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = icmp sle i32 %91, 11
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load i32, i32* @i8k_hwmon_flags, align 4
  %95 = load i32, i32* @I8K_HWMON_HAVE_TEMP6, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  store i32 0, i32* %4, align 4
  br label %187

99:                                               ; preds = %93, %90, %87
  %100 = load i32, i32* %7, align 4
  %101 = icmp sge i32 %100, 12
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i32, i32* %7, align 4
  %104 = icmp sle i32 %103, 13
  br i1 %104, label %105, label %111

105:                                              ; preds = %102
  %106 = load i32, i32* @i8k_hwmon_flags, align 4
  %107 = load i32, i32* @I8K_HWMON_HAVE_TEMP7, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  br label %187

111:                                              ; preds = %105, %102, %99
  %112 = load i32, i32* %7, align 4
  %113 = icmp sge i32 %112, 14
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* %7, align 4
  %116 = icmp sle i32 %115, 15
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* @i8k_hwmon_flags, align 4
  %119 = load i32, i32* @I8K_HWMON_HAVE_TEMP8, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 0, i32* %4, align 4
  br label %187

123:                                              ; preds = %117, %114, %111
  %124 = load i32, i32* %7, align 4
  %125 = icmp sge i32 %124, 16
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load i32, i32* %7, align 4
  %128 = icmp sle i32 %127, 17
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load i32, i32* @i8k_hwmon_flags, align 4
  %131 = load i32, i32* @I8K_HWMON_HAVE_TEMP9, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  store i32 0, i32* %4, align 4
  br label %187

135:                                              ; preds = %129, %126, %123
  %136 = load i32, i32* %7, align 4
  %137 = icmp sge i32 %136, 18
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = icmp sle i32 %139, 19
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* @i8k_hwmon_flags, align 4
  %143 = load i32, i32* @I8K_HWMON_HAVE_TEMP10, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  store i32 0, i32* %4, align 4
  br label %187

147:                                              ; preds = %141, %138, %135
  %148 = load i32, i32* %7, align 4
  %149 = icmp sge i32 %148, 20
  br i1 %149, label %150, label %159

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = icmp sle i32 %151, 22
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load i32, i32* @i8k_hwmon_flags, align 4
  %155 = load i32, i32* @I8K_HWMON_HAVE_FAN1, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %187

159:                                              ; preds = %153, %150, %147
  %160 = load i32, i32* %7, align 4
  %161 = icmp sge i32 %160, 23
  br i1 %161, label %162, label %171

162:                                              ; preds = %159
  %163 = load i32, i32* %7, align 4
  %164 = icmp sle i32 %163, 25
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = load i32, i32* @i8k_hwmon_flags, align 4
  %167 = load i32, i32* @I8K_HWMON_HAVE_FAN2, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %187

171:                                              ; preds = %165, %162, %159
  %172 = load i32, i32* %7, align 4
  %173 = icmp sge i32 %172, 26
  br i1 %173, label %174, label %183

174:                                              ; preds = %171
  %175 = load i32, i32* %7, align 4
  %176 = icmp sle i32 %175, 28
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load i32, i32* @i8k_hwmon_flags, align 4
  %179 = load i32, i32* @I8K_HWMON_HAVE_FAN3, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  store i32 0, i32* %4, align 4
  br label %187

183:                                              ; preds = %177, %174, %171
  %184 = load %struct.attribute*, %struct.attribute** %6, align 8
  %185 = getelementptr inbounds %struct.attribute, %struct.attribute* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %182, %170, %158, %146, %134, %122, %110, %98, %86, %74, %62, %50, %38, %26, %13
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
