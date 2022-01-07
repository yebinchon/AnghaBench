; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_merge_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_uapi.c_uapi_merge_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_api = type { i32 }
%struct.uverbs_api_object = type { i32 }
%struct.uverbs_method_def = type { i32, i32, %struct.uverbs_attr_def***, i32 }
%struct.uverbs_attr_def = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.uverbs_api_ioctl_method = type { i32, %struct.TYPE_6__, i32 }
%struct.uverbs_api_attr = type { i32, %struct.TYPE_6__, i32 }

@EINVAL = common dso_local global i32 0, align 4
@uverbs_destroy_def_handler = common dso_local global i32 0, align 4
@UVERBS_ATTR_TYPE_ENUM_IN = common dso_local global i64 0, align 8
@UVERBS_ATTR_TYPE_IDRS_ARRAY = common dso_local global i64 0, align 8
@UVERBS_ACCESS_NEW = common dso_local global i64 0, align 8
@UVERBS_ACCESS_DESTROY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_api*, %struct.uverbs_api_object*, i32, %struct.uverbs_method_def*, i32)* @uapi_merge_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uapi_merge_method(%struct.uverbs_api* %0, %struct.uverbs_api_object* %1, i32 %2, %struct.uverbs_method_def* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uverbs_api*, align 8
  %8 = alloca %struct.uverbs_api_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uverbs_method_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.uverbs_api_ioctl_method*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.uverbs_attr_def*, align 8
  %17 = alloca %struct.uverbs_api_attr*, align 8
  %18 = alloca i64, align 8
  store %struct.uverbs_api* %0, %struct.uverbs_api** %7, align 8
  store %struct.uverbs_api_object* %1, %struct.uverbs_api_object** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.uverbs_method_def* %3, %struct.uverbs_method_def** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %21 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @uapi_key_ioctl_method(i32 %22)
  %24 = or i32 %19, %23
  store i32 %24, i32* %12, align 4
  %25 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %26 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %25, i32 0, i32 2
  %27 = load %struct.uverbs_attr_def***, %struct.uverbs_attr_def**** %26, align 8
  %28 = icmp ne %struct.uverbs_attr_def*** %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %169

30:                                               ; preds = %5
  %31 = load %struct.uverbs_api*, %struct.uverbs_api** %7, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.uverbs_api_ioctl_method* @uapi_add_get_elm(%struct.uverbs_api* %31, i32 %32, i32 32, i32* %15)
  store %struct.uverbs_api_ioctl_method* %33, %struct.uverbs_api_ioctl_method** %13, align 8
  %34 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %13, align 8
  %35 = call i64 @IS_ERR(%struct.uverbs_api_ioctl_method* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %13, align 8
  %39 = call i32 @PTR_ERR(%struct.uverbs_api_ioctl_method* %38)
  store i32 %39, i32* %6, align 4
  br label %169

40:                                               ; preds = %30
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %45 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %169

52:                                               ; preds = %43
  br label %78

53:                                               ; preds = %40
  %54 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %55 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @WARN_ON(i32 %59)
  %61 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %13, align 8
  %62 = getelementptr inbounds %struct.uverbs_api_ioctl_method, %struct.uverbs_api_ioctl_method* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %65 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rcu_assign_pointer(i32 %63, i32 %66)
  %68 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %69 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @uverbs_destroy_def_handler, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %53
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %13, align 8
  %76 = getelementptr inbounds %struct.uverbs_api_ioctl_method, %struct.uverbs_api_ioctl_method* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %53
  br label %78

78:                                               ; preds = %77, %52
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %165, %78
  %80 = load i32, i32* %14, align 4
  %81 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %82 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %168

85:                                               ; preds = %79
  %86 = load %struct.uverbs_method_def*, %struct.uverbs_method_def** %10, align 8
  %87 = getelementptr inbounds %struct.uverbs_method_def, %struct.uverbs_method_def* %86, i32 0, i32 2
  %88 = load %struct.uverbs_attr_def***, %struct.uverbs_attr_def**** %87, align 8
  %89 = load %struct.uverbs_attr_def**, %struct.uverbs_attr_def*** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %89, i64 %91
  %93 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %92, align 8
  store %struct.uverbs_attr_def* %93, %struct.uverbs_attr_def** %16, align 8
  %94 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %95 = icmp ne %struct.uverbs_attr_def* %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %85
  br label %165

97:                                               ; preds = %85
  %98 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %99 = getelementptr inbounds %struct.uverbs_attr_def, %struct.uverbs_attr_def* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @UVERBS_ATTR_TYPE_ENUM_IN, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = load %struct.uverbs_api_ioctl_method*, %struct.uverbs_api_ioctl_method** %13, align 8
  %107 = getelementptr inbounds %struct.uverbs_api_ioctl_method, %struct.uverbs_api_ioctl_method* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %112 = getelementptr inbounds %struct.uverbs_attr_def, %struct.uverbs_attr_def* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @UVERBS_ATTR_TYPE_IDRS_ARRAY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %110
  %118 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %119 = getelementptr inbounds %struct.uverbs_attr_def, %struct.uverbs_attr_def* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %18, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* @UVERBS_ACCESS_NEW, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %117
  %128 = load i64, i64* %18, align 8
  %129 = load i64, i64* @UVERBS_ACCESS_DESTROY, align 8
  %130 = icmp eq i64 %128, %129
  br label %131

131:                                              ; preds = %127, %117
  %132 = phi i1 [ true, %117 ], [ %130, %127 ]
  %133 = zext i1 %132 to i32
  %134 = call i64 @WARN_ON(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %6, align 4
  br label %169

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %110
  %141 = load %struct.uverbs_api*, %struct.uverbs_api** %7, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %144 = getelementptr inbounds %struct.uverbs_attr_def, %struct.uverbs_attr_def* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @uapi_key_attr(i32 %145)
  %147 = or i32 %142, %146
  %148 = call %struct.uverbs_api_ioctl_method* @uapi_add_elm(%struct.uverbs_api* %141, i32 %147, i32 32)
  %149 = bitcast %struct.uverbs_api_ioctl_method* %148 to %struct.uverbs_api_attr*
  store %struct.uverbs_api_attr* %149, %struct.uverbs_api_attr** %17, align 8
  %150 = load %struct.uverbs_api_attr*, %struct.uverbs_api_attr** %17, align 8
  %151 = bitcast %struct.uverbs_api_attr* %150 to %struct.uverbs_api_ioctl_method*
  %152 = call i64 @IS_ERR(%struct.uverbs_api_ioctl_method* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %140
  %155 = load %struct.uverbs_api_attr*, %struct.uverbs_api_attr** %17, align 8
  %156 = bitcast %struct.uverbs_api_attr* %155 to %struct.uverbs_api_ioctl_method*
  %157 = call i32 @PTR_ERR(%struct.uverbs_api_ioctl_method* %156)
  store i32 %157, i32* %6, align 4
  br label %169

158:                                              ; preds = %140
  %159 = load %struct.uverbs_api_attr*, %struct.uverbs_api_attr** %17, align 8
  %160 = getelementptr inbounds %struct.uverbs_api_attr, %struct.uverbs_api_attr* %159, i32 0, i32 1
  %161 = load %struct.uverbs_attr_def*, %struct.uverbs_attr_def** %16, align 8
  %162 = getelementptr inbounds %struct.uverbs_attr_def, %struct.uverbs_attr_def* %161, i32 0, i32 0
  %163 = bitcast %struct.TYPE_6__* %160 to i8*
  %164 = bitcast %struct.TYPE_6__* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 16, i1 false)
  br label %165

165:                                              ; preds = %158, %96
  %166 = load i32, i32* %14, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %14, align 4
  br label %79

168:                                              ; preds = %79
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %168, %154, %136, %49, %37, %29
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local i32 @uapi_key_ioctl_method(i32) #1

declare dso_local %struct.uverbs_api_ioctl_method* @uapi_add_get_elm(%struct.uverbs_api*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.uverbs_api_ioctl_method*) #1

declare dso_local i32 @PTR_ERR(%struct.uverbs_api_ioctl_method*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32) #1

declare dso_local %struct.uverbs_api_ioctl_method* @uapi_add_elm(%struct.uverbs_api*, i32, i32) #1

declare dso_local i32 @uapi_key_attr(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
