; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.gb_host_device = type { i32 }
%struct.gb_module = type { i32, %struct.gb_host_device* }
%struct.gb_interface = type { i32, i32, i32, %struct.gb_host_device*, %struct.gb_module* }
%struct.gb_control = type { %struct.gb_interface* }
%struct.gb_bundle = type { i32, i32, %struct.gb_interface* }
%struct.gb_svc = type { %struct.gb_host_device* }

@.str = private unnamed_addr constant [43 x i8] c"uevent for unknown greybus device \22type\22!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"BUS=%u\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"MODULE=%u\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"INTERFACE=%u\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"GREYBUS_ID=%08x/%08x\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"BUNDLE=%u\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"BUNDLE_CLASS=%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @greybus_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greybus_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.gb_host_device*, align 8
  %7 = alloca %struct.gb_module*, align 8
  %8 = alloca %struct.gb_interface*, align 8
  %9 = alloca %struct.gb_control*, align 8
  %10 = alloca %struct.gb_bundle*, align 8
  %11 = alloca %struct.gb_svc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  store %struct.gb_module* null, %struct.gb_module** %7, align 8
  store %struct.gb_interface* null, %struct.gb_interface** %8, align 8
  store %struct.gb_control* null, %struct.gb_control** %9, align 8
  store %struct.gb_bundle* null, %struct.gb_bundle** %10, align 8
  store %struct.gb_svc* null, %struct.gb_svc** %11, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i64 @is_gb_host_device(%struct.device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.gb_host_device* @to_gb_host_device(%struct.device* %16)
  store %struct.gb_host_device* %17, %struct.gb_host_device** %6, align 8
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.device*, %struct.device** %4, align 8
  %20 = call i64 @is_gb_module(%struct.device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call %struct.gb_module* @to_gb_module(%struct.device* %23)
  store %struct.gb_module* %24, %struct.gb_module** %7, align 8
  %25 = load %struct.gb_module*, %struct.gb_module** %7, align 8
  %26 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %25, i32 0, i32 1
  %27 = load %struct.gb_host_device*, %struct.gb_host_device** %26, align 8
  store %struct.gb_host_device* %27, %struct.gb_host_device** %6, align 8
  br label %92

28:                                               ; preds = %18
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i64 @is_gb_interface(%struct.device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = call %struct.gb_interface* @to_gb_interface(%struct.device* %33)
  store %struct.gb_interface* %34, %struct.gb_interface** %8, align 8
  %35 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %36 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %35, i32 0, i32 4
  %37 = load %struct.gb_module*, %struct.gb_module** %36, align 8
  store %struct.gb_module* %37, %struct.gb_module** %7, align 8
  %38 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %39 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %38, i32 0, i32 3
  %40 = load %struct.gb_host_device*, %struct.gb_host_device** %39, align 8
  store %struct.gb_host_device* %40, %struct.gb_host_device** %6, align 8
  br label %91

41:                                               ; preds = %28
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i64 @is_gb_control(%struct.device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call %struct.gb_control* @to_gb_control(%struct.device* %46)
  store %struct.gb_control* %47, %struct.gb_control** %9, align 8
  %48 = load %struct.gb_control*, %struct.gb_control** %9, align 8
  %49 = getelementptr inbounds %struct.gb_control, %struct.gb_control* %48, i32 0, i32 0
  %50 = load %struct.gb_interface*, %struct.gb_interface** %49, align 8
  store %struct.gb_interface* %50, %struct.gb_interface** %8, align 8
  %51 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %52 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %51, i32 0, i32 4
  %53 = load %struct.gb_module*, %struct.gb_module** %52, align 8
  store %struct.gb_module* %53, %struct.gb_module** %7, align 8
  %54 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %55 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %54, i32 0, i32 3
  %56 = load %struct.gb_host_device*, %struct.gb_host_device** %55, align 8
  store %struct.gb_host_device* %56, %struct.gb_host_device** %6, align 8
  br label %90

57:                                               ; preds = %41
  %58 = load %struct.device*, %struct.device** %4, align 8
  %59 = call i64 @is_gb_bundle(%struct.device* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call %struct.gb_bundle* @to_gb_bundle(%struct.device* %62)
  store %struct.gb_bundle* %63, %struct.gb_bundle** %10, align 8
  %64 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %65 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %64, i32 0, i32 2
  %66 = load %struct.gb_interface*, %struct.gb_interface** %65, align 8
  store %struct.gb_interface* %66, %struct.gb_interface** %8, align 8
  %67 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %68 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %67, i32 0, i32 4
  %69 = load %struct.gb_module*, %struct.gb_module** %68, align 8
  store %struct.gb_module* %69, %struct.gb_module** %7, align 8
  %70 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %71 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %70, i32 0, i32 3
  %72 = load %struct.gb_host_device*, %struct.gb_host_device** %71, align 8
  store %struct.gb_host_device* %72, %struct.gb_host_device** %6, align 8
  br label %89

73:                                               ; preds = %57
  %74 = load %struct.device*, %struct.device** %4, align 8
  %75 = call i64 @is_gb_svc(%struct.device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call %struct.gb_svc* @to_gb_svc(%struct.device* %78)
  store %struct.gb_svc* %79, %struct.gb_svc** %11, align 8
  %80 = load %struct.gb_svc*, %struct.gb_svc** %11, align 8
  %81 = getelementptr inbounds %struct.gb_svc, %struct.gb_svc* %80, i32 0, i32 0
  %82 = load %struct.gb_host_device*, %struct.gb_host_device** %81, align 8
  store %struct.gb_host_device* %82, %struct.gb_host_device** %6, align 8
  br label %88

83:                                               ; preds = %73
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 @dev_WARN(%struct.device* %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %169

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %61
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %32
  br label %92

92:                                               ; preds = %91, %22
  br label %93

93:                                               ; preds = %92, %15
  %94 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %95 = load %struct.gb_host_device*, %struct.gb_host_device** %6, align 8
  %96 = getelementptr inbounds %struct.gb_host_device, %struct.gb_host_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %94, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %169

103:                                              ; preds = %93
  %104 = load %struct.gb_module*, %struct.gb_module** %7, align 8
  %105 = icmp ne %struct.gb_module* %104, null
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %108 = load %struct.gb_module*, %struct.gb_module** %7, align 8
  %109 = getelementptr inbounds %struct.gb_module, %struct.gb_module* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %169

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %103
  %118 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %119 = icmp ne %struct.gb_interface* %118, null
  br i1 %119, label %120, label %144

120:                                              ; preds = %117
  %121 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %122 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %123 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %169

130:                                              ; preds = %120
  %131 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %132 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %133 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.gb_interface*, %struct.gb_interface** %8, align 8
  %136 = getelementptr inbounds %struct.gb_interface, %struct.gb_interface* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %131, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %130
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %3, align 4
  br label %169

143:                                              ; preds = %130
  br label %144

144:                                              ; preds = %143, %117
  %145 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %146 = icmp ne %struct.gb_bundle* %145, null
  br i1 %146, label %147, label %168

147:                                              ; preds = %144
  %148 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %149 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %150 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %148, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %169

157:                                              ; preds = %147
  %158 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %159 = load %struct.gb_bundle*, %struct.gb_bundle** %10, align 8
  %160 = getelementptr inbounds %struct.gb_bundle, %struct.gb_bundle* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 (%struct.kobj_uevent_env*, i8*, i32, ...) @add_uevent_var(%struct.kobj_uevent_env* %158, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %169

167:                                              ; preds = %157
  br label %168

168:                                              ; preds = %167, %144
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %164, %154, %140, %127, %113, %100, %83
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i64 @is_gb_host_device(%struct.device*) #1

declare dso_local %struct.gb_host_device* @to_gb_host_device(%struct.device*) #1

declare dso_local i64 @is_gb_module(%struct.device*) #1

declare dso_local %struct.gb_module* @to_gb_module(%struct.device*) #1

declare dso_local i64 @is_gb_interface(%struct.device*) #1

declare dso_local %struct.gb_interface* @to_gb_interface(%struct.device*) #1

declare dso_local i64 @is_gb_control(%struct.device*) #1

declare dso_local %struct.gb_control* @to_gb_control(%struct.device*) #1

declare dso_local i64 @is_gb_bundle(%struct.device*) #1

declare dso_local %struct.gb_bundle* @to_gb_bundle(%struct.device*) #1

declare dso_local i64 @is_gb_svc(%struct.device*) #1

declare dso_local %struct.gb_svc* @to_gb_svc(%struct.device*) #1

declare dso_local i32 @dev_WARN(%struct.device*, i8*) #1

declare dso_local i64 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
