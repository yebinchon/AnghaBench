; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_policy.c_stp_policy_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { i32 }
%struct.config_item_type = type { i32 }
%struct.stm_protocol_driver = type { i32 }
%struct.stm_device = type { i32, %struct.TYPE_2__*, %struct.config_item_type*, %struct.stm_protocol_driver* }
%struct.TYPE_2__ = type { %struct.config_group, %struct.stm_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@stp_policy_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @stp_policy_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @stp_policy_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.config_item_type*, align 8
  %7 = alloca %struct.stm_protocol_driver*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.config_group*, align 8
  %12 = alloca %struct.stm_device*, align 8
  %13 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call i8* @kasprintf(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.config_group* @ERR_PTR(i32 %21)
  store %struct.config_group* %22, %struct.config_group** %3, align 8
  br label %128

23:                                               ; preds = %2
  %24 = load i8*, i8** %8, align 8
  %25 = call i8* @strrchr(i8* %24, i8 signext 46)
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = call i32 @kfree(i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.config_group* @ERR_PTR(i32 %32)
  store %struct.config_group* %33, %struct.config_group** %3, align 8
  br label %128

34:                                               ; preds = %23
  %35 = load i8*, i8** %10, align 8
  store i8 0, i8* %35, align 1
  %36 = load i8*, i8** %8, align 8
  %37 = call i8* @strrchr(i8* %36, i8 signext 58)
  store i8* %37, i8** %9, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %9, align 8
  store i8 0, i8* %41, align 1
  br label %43

43:                                               ; preds = %40, %34
  %44 = load i8*, i8** %8, align 8
  %45 = call %struct.stm_device* @stm_find_device(i8* %44)
  store %struct.stm_device* %45, %struct.stm_device** %12, align 8
  %46 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %47 = icmp ne %struct.stm_device* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.config_group* @ERR_PTR(i32 %52)
  store %struct.config_group* %53, %struct.config_group** %3, align 8
  br label %128

54:                                               ; preds = %43
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @stm_lookup_protocol(i8* %55, %struct.stm_protocol_driver** %7, %struct.config_item_type** %6)
  store i32 %56, i32* %13, align 4
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @kfree(i8* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %63 = call i32 @stm_put_device(%struct.stm_device* %62)
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.config_group* @ERR_PTR(i32 %65)
  store %struct.config_group* %66, %struct.config_group** %3, align 8
  br label %128

67:                                               ; preds = %54
  %68 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %69 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %72 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = icmp ne %struct.TYPE_2__* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %67
  %76 = load i32, i32* @EBUSY, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.config_group* @ERR_PTR(i32 %77)
  store %struct.config_group* %78, %struct.config_group** %11, align 8
  br label %114

79:                                               ; preds = %67
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.TYPE_2__* @kzalloc(i32 16, i32 %80)
  %82 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %83 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %82, i32 0, i32 1
  store %struct.TYPE_2__* %81, %struct.TYPE_2__** %83, align 8
  %84 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %85 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = icmp ne %struct.TYPE_2__* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %79
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  %91 = call %struct.config_group* @ERR_PTR(i32 %90)
  store %struct.config_group* %91, %struct.config_group** %11, align 8
  br label %114

92:                                               ; preds = %79
  %93 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %94 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @config_group_init_type_name(%struct.config_group* %96, i8* %97, i32* @stp_policy_type)
  %99 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %7, align 8
  %100 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %101 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %100, i32 0, i32 3
  store %struct.stm_protocol_driver* %99, %struct.stm_protocol_driver** %101, align 8
  %102 = load %struct.config_item_type*, %struct.config_item_type** %6, align 8
  %103 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %104 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %103, i32 0, i32 2
  store %struct.config_item_type* %102, %struct.config_item_type** %104, align 8
  %105 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %106 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %107 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %106, i32 0, i32 1
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store %struct.stm_device* %105, %struct.stm_device** %109, align 8
  %110 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %111 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  store %struct.config_group* %113, %struct.config_group** %11, align 8
  br label %114

114:                                              ; preds = %92, %88, %75
  %115 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %116 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %115, i32 0, i32 0
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.config_group*, %struct.config_group** %11, align 8
  %119 = call i64 @IS_ERR(%struct.config_group* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %114
  %122 = load %struct.stm_protocol_driver*, %struct.stm_protocol_driver** %7, align 8
  %123 = call i32 @stm_put_protocol(%struct.stm_protocol_driver* %122)
  %124 = load %struct.stm_device*, %struct.stm_device** %12, align 8
  %125 = call i32 @stm_put_device(%struct.stm_device* %124)
  br label %126

126:                                              ; preds = %121, %114
  %127 = load %struct.config_group*, %struct.config_group** %11, align 8
  store %struct.config_group* %127, %struct.config_group** %3, align 8
  br label %128

128:                                              ; preds = %126, %61, %48, %28, %19
  %129 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %129
}

declare dso_local i8* @kasprintf(i32, i8*, i8*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.stm_device* @stm_find_device(i8*) #1

declare dso_local i32 @stm_lookup_protocol(i8*, %struct.stm_protocol_driver**, %struct.config_item_type**) #1

declare dso_local i32 @stm_put_device(%struct.stm_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @IS_ERR(%struct.config_group*) #1

declare dso_local i32 @stm_put_protocol(%struct.stm_protocol_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
