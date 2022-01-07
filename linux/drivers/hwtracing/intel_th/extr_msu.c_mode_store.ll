; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_mode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_mode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.msu_buffer = type { i8* (%struct.device.0*, i32*)* }
%struct.device.0 = type opaque
%struct.msc = type { i32, i32, %struct.msu_buffer*, i8*, i32 }

@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@msc_mode = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @mode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.msu_buffer*, align 8
  %11 = alloca %struct.msc*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.msu_buffer* null, %struct.msu_buffer** %10, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.msc* @dev_get_drvdata(%struct.device* %18)
  store %struct.msc* %19, %struct.msc** %11, align 8
  %20 = load i64, i64* %9, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %22 = call i32 @capable(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %156

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @memchr(i8* %28, i8 signext 10, i64 %29)
  store i8* %30, i8** %13, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load i8*, i8** %13, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %33, %27
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %12, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kstrndup(i8* %40, i64 %41, i32 %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %156

49:                                               ; preds = %39
  %50 = load i32, i32* @msc_mode, align 4
  %51 = load i32, i32* @msc_mode, align 4
  %52 = call i32 @ARRAY_SIZE(i32 %51)
  %53 = load i8*, i8** %14, align 8
  %54 = call i32 @match_string(i32 %50, i32 %52, i8* %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i8*, i8** %14, align 8
  %59 = call i32 @kfree(i8* %58)
  br label %81

60:                                               ; preds = %49
  %61 = load %struct.msc*, %struct.msc** %11, align 8
  %62 = getelementptr inbounds %struct.msc, %struct.msc* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @kfree(i8* %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %156

70:                                               ; preds = %60
  %71 = load i8*, i8** %14, align 8
  %72 = call %struct.msu_buffer* @msu_buffer_get(i8* %71)
  store %struct.msu_buffer* %72, %struct.msu_buffer** %10, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = call i32 @kfree(i8* %73)
  %75 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %76 = icmp ne %struct.msu_buffer* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %156

81:                                               ; preds = %77, %57
  %82 = load %struct.msc*, %struct.msc** %11, align 8
  %83 = getelementptr inbounds %struct.msc, %struct.msc* %82, i32 0, i32 1
  %84 = call i32 @mutex_lock(i32* %83)
  store i32 0, i32* %16, align 4
  %85 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %86 = icmp ne %struct.msu_buffer* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %81
  %88 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %89 = load %struct.msc*, %struct.msc** %11, align 8
  %90 = getelementptr inbounds %struct.msc, %struct.msc* %89, i32 0, i32 2
  %91 = load %struct.msu_buffer*, %struct.msu_buffer** %90, align 8
  %92 = icmp eq %struct.msu_buffer* %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %95 = call i32 @msu_buffer_put(%struct.msu_buffer* %94)
  br label %133

96:                                               ; preds = %87, %81
  %97 = load %struct.msc*, %struct.msc** %11, align 8
  %98 = call i32 @msc_buffer_unlocked_free_unless_used(%struct.msc* %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %133

102:                                              ; preds = %96
  %103 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %104 = icmp ne %struct.msu_buffer* %103, null
  br i1 %104, label %105, label %126

105:                                              ; preds = %102
  %106 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %107 = getelementptr inbounds %struct.msu_buffer, %struct.msu_buffer* %106, i32 0, i32 0
  %108 = load i8* (%struct.device.0*, i32*)*, i8* (%struct.device.0*, i32*)** %107, align 8
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = bitcast %struct.device* %109 to %struct.device.0*
  %111 = call i8* %108(%struct.device.0* %110, i32* %15)
  store i8* %111, i8** %17, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %105
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %16, align 4
  br label %133

117:                                              ; preds = %105
  %118 = load %struct.msc*, %struct.msc** %11, align 8
  %119 = call i32 @msc_buffer_unassign(%struct.msc* %118)
  %120 = load i8*, i8** %17, align 8
  %121 = load %struct.msc*, %struct.msc** %11, align 8
  %122 = getelementptr inbounds %struct.msc, %struct.msc* %121, i32 0, i32 3
  store i8* %120, i8** %122, align 8
  %123 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %124 = load %struct.msc*, %struct.msc** %11, align 8
  %125 = getelementptr inbounds %struct.msc, %struct.msc* %124, i32 0, i32 2
  store %struct.msu_buffer* %123, %struct.msu_buffer** %125, align 8
  br label %129

126:                                              ; preds = %102
  %127 = load %struct.msc*, %struct.msc** %11, align 8
  %128 = call i32 @msc_buffer_unassign(%struct.msc* %127)
  br label %129

129:                                              ; preds = %126, %117
  %130 = load i32, i32* %15, align 4
  %131 = load %struct.msc*, %struct.msc** %11, align 8
  %132 = getelementptr inbounds %struct.msc, %struct.msc* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %129, %114, %101, %93
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %138 = icmp ne %struct.msu_buffer* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load %struct.msu_buffer*, %struct.msu_buffer** %10, align 8
  %141 = call i32 @msu_buffer_put(%struct.msu_buffer* %140)
  br label %142

142:                                              ; preds = %139, %136, %133
  %143 = load %struct.msc*, %struct.msc** %11, align 8
  %144 = getelementptr inbounds %struct.msc, %struct.msc* %143, i32 0, i32 1
  %145 = call i32 @mutex_unlock(i32* %144)
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %142
  %149 = load i32, i32* %16, align 4
  %150 = sext i32 %149 to i64
  br label %153

151:                                              ; preds = %142
  %152 = load i64, i64* %9, align 8
  br label %153

153:                                              ; preds = %151, %148
  %154 = phi i64 [ %150, %148 ], [ %152, %151 ]
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %5, align 4
  br label %156

156:                                              ; preds = %153, %78, %65, %46, %24
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local %struct.msc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i8* @memchr(i8*, i8 signext, i64) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i32 @match_string(i32, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.msu_buffer* @msu_buffer_get(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msu_buffer_put(%struct.msu_buffer*) #1

declare dso_local i32 @msc_buffer_unlocked_free_unless_used(%struct.msc*) #1

declare dso_local i32 @msc_buffer_unassign(%struct.msc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
