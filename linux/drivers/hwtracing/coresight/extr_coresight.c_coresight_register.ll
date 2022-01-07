; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/coresight/extr_coresight.c_coresight_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coresight_device = type { i64, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_9__*, i32* }
%struct.TYPE_8__ = type { i32, i32*, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.coresight_desc = type { i64, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.TYPE_7__ }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CORESIGHT_DEV_TYPE_LINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_TYPE_LINKSINK = common dso_local global i64 0, align 8
@CORESIGHT_DEV_SUBTYPE_LINK_MERG = common dso_local global i32 0, align 4
@CORESIGHT_DEV_SUBTYPE_LINK_SPLIT = common dso_local global i32 0, align 4
@coresight_dev_type = common dso_local global i32* null, align 8
@coresight_device_release = common dso_local global i32 0, align 4
@coresight_bustype = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CORESIGHT_DEV_TYPE_SINK = common dso_local global i64 0, align 8
@coresight_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.coresight_device* @coresight_register(%struct.coresight_desc* %0) #0 {
  %2 = alloca %struct.coresight_device*, align 8
  %3 = alloca %struct.coresight_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.coresight_device*, align 8
  store %struct.coresight_desc* %0, %struct.coresight_desc** %3, align 8
  store i32 1, i32* %6, align 4
  store i32* null, i32** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.coresight_device* @kzalloc(i32 80, i32 %9)
  store %struct.coresight_device* %10, %struct.coresight_device** %8, align 8
  %11 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %12 = icmp ne %struct.coresight_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %173

16:                                               ; preds = %1
  %17 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %18 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CORESIGHT_DEV_TYPE_LINK, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %24 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %54

28:                                               ; preds = %22, %16
  %29 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %30 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @CORESIGHT_DEV_SUBTYPE_LINK_MERG, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %38 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %53

42:                                               ; preds = %28
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @CORESIGHT_DEV_SUBTYPE_LINK_SPLIT, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %48 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %46, %42
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %53, %22
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i32* @kcalloc(i32 %55, i32 4, i32 %56)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %170

63:                                               ; preds = %54
  %64 = load i32*, i32** %7, align 8
  %65 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %66 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %65, i32 0, i32 6
  store i32* %64, i32** %66, align 8
  %67 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %68 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %67, i32 0, i32 1
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %71 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %70, i32 0, i32 5
  store %struct.TYPE_9__* %69, %struct.TYPE_9__** %71, align 8
  %72 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %73 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %76 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %78 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %77, i32 0, i32 4
  %79 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %80 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %79, i32 0, i32 6
  %81 = bitcast %struct.TYPE_7__* %78 to i8*
  %82 = bitcast %struct.TYPE_7__* %80 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %81, i8* align 8 %82, i64 4, i1 false)
  %83 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %84 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %87 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  %88 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %89 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %88, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = load i32*, i32** @coresight_dev_type, align 8
  %91 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %92 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %96 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 5
  store i32* %94, i32** %97, align 8
  %98 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %99 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %102 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 4
  store i32 %100, i32* %103, align 8
  %104 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %105 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %108 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* @coresight_device_release, align 4
  %111 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %112 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i32 %110, i32* %113, align 8
  %114 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %115 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32* @coresight_bustype, i32** %116, align 8
  %117 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %118 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @dev_fwnode(i32 %119)
  %121 = call i32 @fwnode_handle_get(i32 %120)
  %122 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %123 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %126 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %125, i32 0, i32 2
  %127 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %128 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_set_name(%struct.TYPE_8__* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %132 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %131, i32 0, i32 2
  %133 = call i32 @device_register(%struct.TYPE_8__* %132)
  store i32 %133, i32* %4, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %63
  %137 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %138 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %137, i32 0, i32 2
  %139 = call i32 @put_device(%struct.TYPE_8__* %138)
  br label %173

140:                                              ; preds = %63
  %141 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %142 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @CORESIGHT_DEV_TYPE_SINK, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %148 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @CORESIGHT_DEV_TYPE_LINKSINK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %162

152:                                              ; preds = %146, %140
  %153 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %154 = call i32 @etm_perf_add_symlink_sink(%struct.coresight_device* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %159 = getelementptr inbounds %struct.coresight_device, %struct.coresight_device* %158, i32 0, i32 2
  %160 = call i32 @device_unregister(%struct.TYPE_8__* %159)
  br label %173

161:                                              ; preds = %152
  br label %162

162:                                              ; preds = %161, %146
  %163 = call i32 @mutex_lock(i32* @coresight_mutex)
  %164 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %165 = call i32 @coresight_fixup_device_conns(%struct.coresight_device* %164)
  %166 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %167 = call i32 @coresight_fixup_orphan_conns(%struct.coresight_device* %166)
  %168 = call i32 @mutex_unlock(i32* @coresight_mutex)
  %169 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  store %struct.coresight_device* %169, %struct.coresight_device** %2, align 8
  br label %180

170:                                              ; preds = %60
  %171 = load %struct.coresight_device*, %struct.coresight_device** %8, align 8
  %172 = call i32 @kfree(%struct.coresight_device* %171)
  br label %173

173:                                              ; preds = %170, %157, %136, %13
  %174 = load %struct.coresight_desc*, %struct.coresight_desc** %3, align 8
  %175 = getelementptr inbounds %struct.coresight_desc, %struct.coresight_desc* %174, i32 0, i32 1
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = call i32 @coresight_release_platform_data(%struct.TYPE_9__* %176)
  %178 = load i32, i32* %4, align 4
  %179 = call %struct.coresight_device* @ERR_PTR(i32 %178)
  store %struct.coresight_device* %179, %struct.coresight_device** %2, align 8
  br label %180

180:                                              ; preds = %173, %162
  %181 = load %struct.coresight_device*, %struct.coresight_device** %2, align 8
  ret %struct.coresight_device* %181
}

declare dso_local %struct.coresight_device* @kzalloc(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fwnode_handle_get(i32) #1

declare dso_local i32 @dev_fwnode(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @put_device(%struct.TYPE_8__*) #1

declare dso_local i32 @etm_perf_add_symlink_sink(%struct.coresight_device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_8__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @coresight_fixup_device_conns(%struct.coresight_device*) #1

declare dso_local i32 @coresight_fixup_orphan_conns(%struct.coresight_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.coresight_device*) #1

declare dso_local i32 @coresight_release_platform_data(%struct.TYPE_9__*) #1

declare dso_local %struct.coresight_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
