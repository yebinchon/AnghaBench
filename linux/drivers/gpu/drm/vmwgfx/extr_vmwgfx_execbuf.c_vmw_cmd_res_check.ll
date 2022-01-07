; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_res_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_execbuf.c_vmw_cmd_res_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_private = type { i32 }
%struct.vmw_sw_context = type { i32, %struct.TYPE_2__*, i32, %struct.vmw_res_cache_entry* }
%struct.TYPE_2__ = type { i32 }
%struct.vmw_res_cache_entry = type { i32, i64, %struct.vmw_resource*, i64, i32 }
%struct.vmw_resource = type { i32 }
%struct.vmw_user_resource_conv = type { i32 }

@SVGA3D_INVALID_ID = common dso_local global i64 0, align 8
@vmw_res_context = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Illegal context invalid id.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Could not find/use resource 0x%08x.\0A\00", align 1
@vmw_res_rel_normal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmw_private*, %struct.vmw_sw_context*, i32, i32, %struct.vmw_user_resource_conv*, i64*, %struct.vmw_resource**)* @vmw_cmd_res_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmw_cmd_res_check(%struct.vmw_private* %0, %struct.vmw_sw_context* %1, i32 %2, i32 %3, %struct.vmw_user_resource_conv* %4, i64* %5, %struct.vmw_resource** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vmw_private*, align 8
  %10 = alloca %struct.vmw_sw_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vmw_user_resource_conv*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.vmw_resource**, align 8
  %16 = alloca %struct.vmw_res_cache_entry*, align 8
  %17 = alloca %struct.vmw_resource*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vmw_private* %0, %struct.vmw_private** %9, align 8
  store %struct.vmw_sw_context* %1, %struct.vmw_sw_context** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.vmw_user_resource_conv* %4, %struct.vmw_user_resource_conv** %13, align 8
  store i64* %5, i64** %14, align 8
  store %struct.vmw_resource** %6, %struct.vmw_resource*** %15, align 8
  %20 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %21 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %20, i32 0, i32 3
  %22 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %21, align 8
  %23 = load i32, i32* %11, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %22, i64 %24
  store %struct.vmw_res_cache_entry* %25, %struct.vmw_res_cache_entry** %16, align 8
  %26 = load %struct.vmw_resource**, %struct.vmw_resource*** %15, align 8
  %27 = icmp ne %struct.vmw_resource** %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load %struct.vmw_resource**, %struct.vmw_resource*** %15, align 8
  store %struct.vmw_resource* null, %struct.vmw_resource** %29, align 8
  br label %30

30:                                               ; preds = %28, %7
  %31 = load i64*, i64** %14, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SVGA3D_INVALID_ID, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @vmw_res_context, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %158

43:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %158

44:                                               ; preds = %30
  %45 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %46 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load i64*, i64** %14, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %53 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br label %56

56:                                               ; preds = %49, %44
  %57 = phi i1 [ false, %44 ], [ %55, %49 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @likely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %63 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %62, i32 0, i32 2
  %64 = load %struct.vmw_resource*, %struct.vmw_resource** %63, align 8
  store %struct.vmw_resource* %64, %struct.vmw_resource** %17, align 8
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %69 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %72 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @vmw_validation_res_set_dirty(i32 %70, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %67, %61
  br label %142

77:                                               ; preds = %56
  %78 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @vmw_execbuf_res_size(%struct.vmw_private* %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %82 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %19, align 4
  %85 = call i32 @vmw_validation_preload_res(i32 %83, i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i32, i32* %18, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i32, i32* %18, align 4
  store i32 %89, i32* %8, align 4
  br label %158

90:                                               ; preds = %77
  %91 = load %struct.vmw_private*, %struct.vmw_private** %9, align 8
  %92 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %93 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %14, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vmw_user_resource_conv*, %struct.vmw_user_resource_conv** %13, align 8
  %100 = call %struct.vmw_resource* @vmw_user_resource_noref_lookup_handle(%struct.vmw_private* %91, i32 %96, i64 %98, %struct.vmw_user_resource_conv* %99)
  store %struct.vmw_resource* %100, %struct.vmw_resource** %17, align 8
  %101 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %102 = call i64 @IS_ERR(%struct.vmw_resource* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %90
  %105 = load i64*, i64** %14, align 8
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 (i8*, ...) @VMW_DEBUG_USER(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %110 = call i32 @PTR_ERR(%struct.vmw_resource* %109)
  store i32 %110, i32* %8, align 4
  br label %158

111:                                              ; preds = %90
  %112 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %113 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @vmw_execbuf_res_noref_val_add(%struct.vmw_sw_context* %112, %struct.vmw_resource* %113, i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i32
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %18, align 4
  store i32 %122, i32* %8, align 4
  br label %158

123:                                              ; preds = %111
  %124 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %125 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %130 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %129, i32 0, i32 2
  %131 = load %struct.vmw_resource*, %struct.vmw_resource** %130, align 8
  %132 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %133 = icmp eq %struct.vmw_resource* %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %128
  %135 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %136 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load i64*, i64** %14, align 8
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.vmw_res_cache_entry*, %struct.vmw_res_cache_entry** %16, align 8
  %140 = getelementptr inbounds %struct.vmw_res_cache_entry, %struct.vmw_res_cache_entry* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %134, %128, %123
  br label %142

142:                                              ; preds = %141, %76
  %143 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %144 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %145 = load %struct.vmw_sw_context*, %struct.vmw_sw_context** %10, align 8
  %146 = getelementptr inbounds %struct.vmw_sw_context, %struct.vmw_sw_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i64*, i64** %14, align 8
  %149 = call i32 @vmw_ptr_diff(i32 %147, i64* %148)
  %150 = load i32, i32* @vmw_res_rel_normal, align 4
  %151 = call i32 @vmw_resource_relocation_add(%struct.vmw_sw_context* %143, %struct.vmw_resource* %144, i32 %149, i32 %150)
  store i32 %151, i32* %18, align 4
  %152 = load %struct.vmw_resource**, %struct.vmw_resource*** %15, align 8
  %153 = icmp ne %struct.vmw_resource** %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %142
  %155 = load %struct.vmw_resource*, %struct.vmw_resource** %17, align 8
  %156 = load %struct.vmw_resource**, %struct.vmw_resource*** %15, align 8
  store %struct.vmw_resource* %155, %struct.vmw_resource** %156, align 8
  br label %157

157:                                              ; preds = %154, %142
  store i32 0, i32* %8, align 4
  br label %158

158:                                              ; preds = %157, %121, %104, %88, %43, %39
  %159 = load i32, i32* %8, align 4
  ret i32 %159
}

declare dso_local i32 @VMW_DEBUG_USER(i8*, ...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @vmw_validation_res_set_dirty(i32, i32, i32) #1

declare dso_local i32 @vmw_execbuf_res_size(%struct.vmw_private*, i32) #1

declare dso_local i32 @vmw_validation_preload_res(i32, i32) #1

declare dso_local %struct.vmw_resource* @vmw_user_resource_noref_lookup_handle(%struct.vmw_private*, i32, i64, %struct.vmw_user_resource_conv*) #1

declare dso_local i64 @IS_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @PTR_ERR(%struct.vmw_resource*) #1

declare dso_local i32 @vmw_execbuf_res_noref_val_add(%struct.vmw_sw_context*, %struct.vmw_resource*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmw_resource_relocation_add(%struct.vmw_sw_context*, %struct.vmw_resource*, i32, i32) #1

declare dso_local i32 @vmw_ptr_diff(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
