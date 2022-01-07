; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_mailbox-test.c_mbox_test_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mbox_test_device = type { i32, i8*, i8*, i32, i32*, i8*, i32*, i32* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@MBOX_MAX_MSG_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Successfully registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mbox_test_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbox_test_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mbox_test_device*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32* %9, i32 64, i32 %10)
  %12 = bitcast i8* %11 to %struct.mbox_test_device*
  store %struct.mbox_test_device* %12, %struct.mbox_test_device** %4, align 8
  %13 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %14 = icmp ne %struct.mbox_test_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %189

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = load i32, i32* @IORESOURCE_MEM, align 4
  %21 = call %struct.resource* @platform_get_resource(%struct.platform_device* %19, i32 %20, i32 0)
  store %struct.resource* %21, %struct.resource** %5, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.resource*, %struct.resource** %5, align 8
  %25 = call i8* @devm_ioremap_resource(i32* %23, %struct.resource* %24)
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %28 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %27, i32 0, i32 6
  store i32* %26, i32** %28, align 8
  %29 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %30 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @PTR_ERR(i32* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %18
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = call i32 @resource_size(%struct.resource* %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load %struct.resource*, %struct.resource** %5, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i8* @devm_ioremap(i32* %40, i32 %43, i32 %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %48 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %47, i32 0, i32 6
  store i32* %46, i32** %48, align 8
  br label %59

49:                                               ; preds = %18
  %50 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %51 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %50, i32 0, i32 6
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @IS_ERR(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %57 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %56, i32 0, i32 6
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %49
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = load i32, i32* @IORESOURCE_MEM, align 4
  %62 = call %struct.resource* @platform_get_resource(%struct.platform_device* %60, i32 %61, i32 1)
  store %struct.resource* %62, %struct.resource** %5, align 8
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = call i8* @devm_ioremap_resource(i32* %64, %struct.resource* %65)
  %67 = bitcast i8* %66 to i32*
  %68 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %69 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %68, i32 0, i32 7
  store i32* %67, i32** %69, align 8
  %70 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %71 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %59
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = call i32 @resource_size(%struct.resource* %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %81 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = getelementptr inbounds %struct.resource, %struct.resource* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i8* @devm_ioremap(i32* %81, i32 %84, i32 %85)
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %89 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %88, i32 0, i32 7
  store i32* %87, i32** %89, align 8
  br label %103

90:                                               ; preds = %59
  %91 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %92 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %91, i32 0, i32 7
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @IS_ERR(i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %98 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %97, i32 0, i32 6
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %101 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %100, i32 0, i32 7
  store i32* %99, i32** %101, align 8
  br label %102

102:                                              ; preds = %96, %90
  br label %103

103:                                              ; preds = %102, %77
  %104 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %105 = call i8* @mbox_test_request_channel(%struct.platform_device* %104, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %106 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %107 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = call i8* @mbox_test_request_channel(%struct.platform_device* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %110 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %111 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  %112 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %113 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %112, i32 0, i32 5
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %124, label %116

116:                                              ; preds = %103
  %117 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %118 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* @EPROBE_DEFER, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %189

124:                                              ; preds = %116, %103
  %125 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %126 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %143, label %129

129:                                              ; preds = %124
  %130 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %131 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %130, i32 0, i32 7
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %134 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %133, i32 0, i32 6
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %132, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %139 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %138, i32 0, i32 5
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %142 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %143

143:                                              ; preds = %137, %129, %124
  %144 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %145 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %144, i32 0, i32 0
  %146 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %147 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %146, i32 0, i32 4
  store i32* %145, i32** %147, align 8
  %148 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %149 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %150 = call i32 @platform_set_drvdata(%struct.platform_device* %148, %struct.mbox_test_device* %149)
  %151 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %152 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %151, i32 0, i32 3
  %153 = call i32 @spin_lock_init(i32* %152)
  %154 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %155 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %154, i32 0, i32 2
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %174

158:                                              ; preds = %143
  %159 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %160 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %159, i32 0, i32 0
  %161 = load i32, i32* @MBOX_MAX_MSG_LEN, align 4
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i8* @devm_kzalloc(i32* %160, i32 %161, i32 %162)
  %164 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %165 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %167 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = icmp ne i8* %168, null
  br i1 %169, label %173, label %170

170:                                              ; preds = %158
  %171 = load i32, i32* @ENOMEM, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %189

173:                                              ; preds = %158
  br label %174

174:                                              ; preds = %173, %143
  %175 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %176 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %177 = call i32 @mbox_test_add_debugfs(%struct.platform_device* %175, %struct.mbox_test_device* %176)
  store i32 %177, i32* %7, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %189

182:                                              ; preds = %174
  %183 = load %struct.mbox_test_device*, %struct.mbox_test_device** %4, align 8
  %184 = getelementptr inbounds %struct.mbox_test_device, %struct.mbox_test_device* %183, i32 0, i32 0
  %185 = call i32 @init_waitqueue_head(i32* %184)
  %186 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %187 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %186, i32 0, i32 0
  %188 = call i32 @dev_info(i32* %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %189

189:                                              ; preds = %182, %180, %170, %121, %15
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i8* @devm_ioremap(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i8* @mbox_test_request_channel(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.mbox_test_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mbox_test_add_debugfs(%struct.platform_device*, %struct.mbox_test_device*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
