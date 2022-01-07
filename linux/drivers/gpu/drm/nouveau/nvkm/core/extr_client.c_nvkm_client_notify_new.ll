; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_notify_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_client.c_nvkm_client_notify_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { %struct.nvkm_client* }
%struct.nvkm_client = type { %struct.nvkm_client_notify** }
%struct.nvkm_client_notify = type { i32, %struct.nvkm_client*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.nvkm_event = type { i32 }
%union.anon = type { %struct.nvif_notify_req_v0 }
%struct.nvif_notify_req_v0 = type { i64, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"notify new size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"notify new vers %d reply %d route %02x token %llx\0A\00", align 1
@nvkm_client_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_client_notify_new(%struct.nvkm_object* %0, %struct.nvkm_event* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_object*, align 8
  %7 = alloca %struct.nvkm_event*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_client*, align 8
  %11 = alloca %struct.nvkm_client_notify*, align 8
  %12 = alloca %union.anon*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_object* %0, %struct.nvkm_object** %6, align 8
  store %struct.nvkm_event* %1, %struct.nvkm_event** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %16, i32 0, i32 0
  %18 = load %struct.nvkm_client*, %struct.nvkm_client** %17, align 8
  store %struct.nvkm_client* %18, %struct.nvkm_client** %10, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %union.anon*
  store %union.anon* %20, %union.anon** %12, align 8
  %21 = load i32, i32* @ENOSYS, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %15, align 4
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %40, %4
  %24 = load i64, i64* %13, align 8
  %25 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %26 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %25, i32 0, i32 0
  %27 = load %struct.nvkm_client_notify**, %struct.nvkm_client_notify*** %26, align 8
  %28 = call i64 @ARRAY_SIZE(%struct.nvkm_client_notify** %27)
  %29 = icmp ult i64 %24, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %23
  %31 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %32 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %31, i32 0, i32 0
  %33 = load %struct.nvkm_client_notify**, %struct.nvkm_client_notify*** %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = getelementptr inbounds %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %33, i64 %34
  %36 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %35, align 8
  %37 = icmp ne %struct.nvkm_client_notify* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39
  %41 = load i64, i64* %13, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %13, align 8
  br label %23

43:                                               ; preds = %38, %23
  %44 = load i64, i64* %13, align 8
  %45 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %46 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %45, i32 0, i32 0
  %47 = load %struct.nvkm_client_notify**, %struct.nvkm_client_notify*** %46, align 8
  %48 = call i64 @ARRAY_SIZE(%struct.nvkm_client_notify** %47)
  %49 = icmp eq i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %157

53:                                               ; preds = %43
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.nvkm_client_notify* @kzalloc(i32 40, i32 %54)
  store %struct.nvkm_client_notify* %55, %struct.nvkm_client_notify** %11, align 8
  %56 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %57 = icmp ne %struct.nvkm_client_notify* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %5, align 4
  br label %157

61:                                               ; preds = %53
  %62 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %15, align 4
  %66 = load %union.anon*, %union.anon** %12, align 8
  %67 = bitcast %union.anon* %66 to %struct.nvif_notify_req_v0*
  %68 = call i32 @nvif_unpack(i32 %65, i8** %8, i32* %9, %struct.nvif_notify_req_v0* byval(%struct.nvif_notify_req_v0) align 8 %67, i32 0, i32 0, i32 1)
  store i32 %68, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %125, label %70

70:                                               ; preds = %61
  %71 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %72 = load %union.anon*, %union.anon** %12, align 8
  %73 = bitcast %union.anon* %72 to %struct.nvif_notify_req_v0*
  %74 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %union.anon*, %union.anon** %12, align 8
  %77 = bitcast %union.anon* %76 to %struct.nvif_notify_req_v0*
  %78 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %union.anon*, %union.anon** %12, align 8
  %81 = bitcast %union.anon* %80 to %struct.nvif_notify_req_v0*
  %82 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %union.anon*, %union.anon** %12, align 8
  %85 = bitcast %union.anon* %84 to %struct.nvif_notify_req_v0*
  %86 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.nvkm_object*, i8*, i32, ...) @nvif_ioctl(%struct.nvkm_object* %71, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %75, i64 %79, i32 %83, i32 %87)
  %89 = load %union.anon*, %union.anon** %12, align 8
  %90 = bitcast %union.anon* %89 to %struct.nvif_notify_req_v0*
  %91 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %94 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 8
  %95 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %96 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %95, i32 0, i32 0
  store i32 12, i32* %96, align 8
  %97 = load %union.anon*, %union.anon** %12, align 8
  %98 = bitcast %union.anon* %97 to %struct.nvif_notify_req_v0*
  %99 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %102 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 4
  %105 = load %union.anon*, %union.anon** %12, align 8
  %106 = bitcast %union.anon* %105 to %struct.nvif_notify_req_v0*
  %107 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %110 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load %union.anon*, %union.anon** %12, align 8
  %114 = bitcast %union.anon* %113 to %struct.nvif_notify_req_v0*
  %115 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %118 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  store i32 %116, i32* %120, align 4
  %121 = load %union.anon*, %union.anon** %12, align 8
  %122 = bitcast %union.anon* %121 to %struct.nvif_notify_req_v0*
  %123 = getelementptr inbounds %struct.nvif_notify_req_v0, %struct.nvif_notify_req_v0* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %14, align 8
  br label %125

125:                                              ; preds = %70, %61
  %126 = load i32, i32* %15, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %153

128:                                              ; preds = %125
  %129 = load %struct.nvkm_object*, %struct.nvkm_object** %6, align 8
  %130 = load %struct.nvkm_event*, %struct.nvkm_event** %7, align 8
  %131 = load i32, i32* @nvkm_client_notify, align 4
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i64, i64* %14, align 8
  %135 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %136 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %135, i32 0, i32 2
  %137 = call i32 @nvkm_notify_init(%struct.nvkm_object* %129, %struct.nvkm_event* %130, i32 %131, i32 0, i8* %132, i32 %133, i64 %134, i32* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %152

140:                                              ; preds = %128
  %141 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %142 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %143 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %142, i32 0, i32 0
  %144 = load %struct.nvkm_client_notify**, %struct.nvkm_client_notify*** %143, align 8
  %145 = load i64, i64* %13, align 8
  %146 = getelementptr inbounds %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %144, i64 %145
  store %struct.nvkm_client_notify* %141, %struct.nvkm_client_notify** %146, align 8
  %147 = load %struct.nvkm_client*, %struct.nvkm_client** %10, align 8
  %148 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %149 = getelementptr inbounds %struct.nvkm_client_notify, %struct.nvkm_client_notify* %148, i32 0, i32 1
  store %struct.nvkm_client* %147, %struct.nvkm_client** %149, align 8
  %150 = load i64, i64* %13, align 8
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %5, align 4
  br label %157

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152, %125
  %154 = load %struct.nvkm_client_notify*, %struct.nvkm_client_notify** %11, align 8
  %155 = call i32 @kfree(%struct.nvkm_client_notify* %154)
  %156 = load i32, i32* %15, align 4
  store i32 %156, i32* %5, align 4
  br label %157

157:                                              ; preds = %153, %140, %58, %50
  %158 = load i32, i32* %5, align 4
  ret i32 %158
}

declare dso_local i64 @ARRAY_SIZE(%struct.nvkm_client_notify**) #1

declare dso_local %struct.nvkm_client_notify* @kzalloc(i32, i32) #1

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, i32, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_notify_req_v0* byval(%struct.nvif_notify_req_v0) align 8, i32, i32, i32) #1

declare dso_local i32 @nvkm_notify_init(%struct.nvkm_object*, %struct.nvkm_event*, i32, i32, i8*, i32, i64, i32*) #1

declare dso_local i32 @kfree(%struct.nvkm_client_notify*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
