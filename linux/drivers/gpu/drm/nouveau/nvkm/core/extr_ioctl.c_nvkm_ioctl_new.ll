; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/core/extr_ioctl.c_nvkm_ioctl_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_client = type { %struct.nvkm_object* }
%struct.nvkm_object = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* }
%struct.nvkm_oclass = type { i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object.0**)*, i64, %struct.nvkm_object*, %struct.nvkm_client*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.nvkm_object.0 = type opaque
%struct.TYPE_3__ = type { i64 }
%union.anon = type { %struct.nvif_ioctl_new_v0 }
%struct.nvif_ioctl_new_v0 = type { i64, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"new size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"new vers %d handle %08x class %08x route %02x token %llx object %016llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot have children\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_client*, %struct.nvkm_object*, i8*, i32)* @nvkm_ioctl_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_ioctl_new(%struct.nvkm_client* %0, %struct.nvkm_object* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_client*, align 8
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.anon*, align 8
  %11 = alloca %struct.nvkm_object*, align 8
  %12 = alloca %struct.nvkm_oclass, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_client* %0, %struct.nvkm_client** %6, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %union.anon*
  store %union.anon* %16, %union.anon** %10, align 8
  store %struct.nvkm_object* null, %struct.nvkm_object** %11, align 8
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (%struct.nvkm_object*, i8*, ...) @nvif_ioctl(%struct.nvkm_object* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %13, align 4
  %23 = load %union.anon*, %union.anon** %10, align 8
  %24 = bitcast %union.anon* %23 to %struct.nvif_ioctl_new_v0*
  %25 = call i32 @nvif_unpack(i32 %22, i8** %8, i32* %9, %struct.nvif_ioctl_new_v0* byval(%struct.nvif_ioctl_new_v0) align 8 %24, i32 0, i32 0, i32 1)
  store i32 %25, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %54, label %27

27:                                               ; preds = %4
  %28 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %29 = load %union.anon*, %union.anon** %10, align 8
  %30 = bitcast %union.anon* %29 to %struct.nvif_ioctl_new_v0*
  %31 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load %union.anon*, %union.anon** %10, align 8
  %34 = bitcast %union.anon* %33 to %struct.nvif_ioctl_new_v0*
  %35 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %union.anon*, %union.anon** %10, align 8
  %38 = bitcast %union.anon* %37 to %struct.nvif_ioctl_new_v0*
  %39 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %union.anon*, %union.anon** %10, align 8
  %42 = bitcast %union.anon* %41 to %struct.nvif_ioctl_new_v0*
  %43 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %union.anon*, %union.anon** %10, align 8
  %46 = bitcast %union.anon* %45 to %struct.nvif_ioctl_new_v0*
  %47 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %union.anon*, %union.anon** %10, align 8
  %50 = bitcast %union.anon* %49 to %struct.nvif_ioctl_new_v0*
  %51 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.nvkm_object*, i8*, ...) @nvif_ioctl(%struct.nvkm_object* %28, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36, i64 %40, i32 %44, i32 %48, i32 %52)
  br label %56

54:                                               ; preds = %4
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %5, align 4
  br label %174

56:                                               ; preds = %27
  %57 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %58 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)*, i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)** %60, align 8
  %62 = icmp ne i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %56
  %64 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %65 = call i32 (%struct.nvkm_object*, i8*, ...) @nvif_ioctl(%struct.nvkm_object* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %174

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %109, %68
  %70 = call i32 @memset(%struct.nvkm_oclass* %12, i32 0, i32 56)
  %71 = load %union.anon*, %union.anon** %10, align 8
  %72 = bitcast %union.anon* %71 to %struct.nvif_ioctl_new_v0*
  %73 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 7
  store i32 %74, i32* %75, align 4
  %76 = load %union.anon*, %union.anon** %10, align 8
  %77 = bitcast %union.anon* %76 to %struct.nvif_ioctl_new_v0*
  %78 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 6
  store i32 %79, i32* %80, align 8
  %81 = load %union.anon*, %union.anon** %10, align 8
  %82 = bitcast %union.anon* %81 to %struct.nvif_ioctl_new_v0*
  %83 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 5
  store i32 %84, i32* %85, align 4
  %86 = load %union.anon*, %union.anon** %10, align 8
  %87 = bitcast %union.anon* %86 to %struct.nvif_ioctl_new_v0*
  %88 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 4
  store i32 %89, i32* %90, align 8
  %91 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %92 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 3
  store %struct.nvkm_client* %91, %struct.nvkm_client** %92, align 8
  %93 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %94 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 2
  store %struct.nvkm_object* %93, %struct.nvkm_object** %94, align 8
  %95 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %96 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %95, i32 0, i32 2
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)*, i32 (%struct.nvkm_object*, i32, %struct.nvkm_oclass*)** %98, align 8
  %100 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  %103 = call i32 %99(%struct.nvkm_object* %100, i32 %101, %struct.nvkm_oclass* %12)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %69
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %5, align 4
  br label %174

108:                                              ; preds = %69
  br label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %union.anon*, %union.anon** %10, align 8
  %114 = bitcast %union.anon* %113 to %struct.nvif_ioctl_new_v0*
  %115 = getelementptr inbounds %struct.nvif_ioctl_new_v0, %struct.nvif_ioctl_new_v0* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %112, %116
  br i1 %117, label %69, label %118

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @nvkm_engine_ref(i64 %124)
  %126 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  store i64 %125, i64* %126, align 8
  %127 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @IS_ERR(i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @PTR_ERR(i64 %133)
  store i32 %134, i32* %5, align 4
  br label %174

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %118
  %137 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 0
  %138 = load i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object.0**)*, i32 (%struct.nvkm_oclass*, i8*, i32, %struct.nvkm_object.0**)** %137, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = bitcast %struct.nvkm_object** %11 to %struct.nvkm_object.0**
  %142 = call i32 %138(%struct.nvkm_oclass* %12, i8* %139, i32 %140, %struct.nvkm_object.0** %141)
  store i32 %142, i32* %13, align 4
  %143 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 1
  %144 = call i32 @nvkm_engine_unref(i64* %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %171

147:                                              ; preds = %136
  %148 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %149 = call i32 @nvkm_object_init(%struct.nvkm_object* %148)
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %147
  %153 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %154 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %153, i32 0, i32 1
  %155 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %156 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %155, i32 0, i32 0
  %157 = call i32 @list_add(i32* %154, i32* %156)
  %158 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %159 = call i64 @nvkm_object_insert(%struct.nvkm_object* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %152
  %162 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %163 = load %struct.nvkm_client*, %struct.nvkm_client** %6, align 8
  %164 = getelementptr inbounds %struct.nvkm_client, %struct.nvkm_client* %163, i32 0, i32 0
  store %struct.nvkm_object* %162, %struct.nvkm_object** %164, align 8
  store i32 0, i32* %5, align 4
  br label %174

165:                                              ; preds = %152
  %166 = load i32, i32* @EEXIST, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %165, %147
  %169 = load %struct.nvkm_object*, %struct.nvkm_object** %11, align 8
  %170 = call i32 @nvkm_object_fini(%struct.nvkm_object* %169, i32 0)
  br label %171

171:                                              ; preds = %168, %136
  %172 = call i32 @nvkm_object_del(%struct.nvkm_object** %11)
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %171, %161, %131, %106, %63, %54
  %175 = load i32, i32* %5, align 4
  ret i32 %175
}

declare dso_local i32 @nvif_ioctl(%struct.nvkm_object*, i8*, ...) #1

declare dso_local i32 @nvif_unpack(i32, i8**, i32*, %struct.nvif_ioctl_new_v0* byval(%struct.nvif_ioctl_new_v0) align 8, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.nvkm_oclass*, i32, i32) #1

declare dso_local i64 @nvkm_engine_ref(i64) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @nvkm_engine_unref(i64*) #1

declare dso_local i32 @nvkm_object_init(%struct.nvkm_object*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @nvkm_object_insert(%struct.nvkm_object*) #1

declare dso_local i32 @nvkm_object_fini(%struct.nvkm_object*, i32) #1

declare dso_local i32 @nvkm_object_del(%struct.nvkm_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
