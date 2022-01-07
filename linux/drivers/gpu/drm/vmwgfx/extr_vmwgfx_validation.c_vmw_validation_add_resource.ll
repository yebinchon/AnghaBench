; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_add_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_validation.c_vmw_validation_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_validation_context = type { i32, i32, i64 }
%struct.vmw_resource = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vmw_validation_res_node = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to allocate a resource validation entry.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to initialize a resource validation entry.\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@VMW_RES_DIRTY_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_validation_add_resource(%struct.vmw_validation_context* %0, %struct.vmw_resource* %1, i64 %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vmw_validation_context*, align 8
  %9 = alloca %struct.vmw_resource*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vmw_validation_res_node*, align 8
  %15 = alloca i32, align 4
  store %struct.vmw_validation_context* %0, %struct.vmw_validation_context** %8, align 8
  store %struct.vmw_resource* %1, %struct.vmw_resource** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %17 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %18 = call %struct.vmw_validation_res_node* @vmw_validation_find_res_dup(%struct.vmw_validation_context* %16, %struct.vmw_resource* %17)
  store %struct.vmw_validation_res_node* %18, %struct.vmw_validation_res_node** %14, align 8
  %19 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %20 = icmp ne %struct.vmw_validation_res_node* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %23 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %109

24:                                               ; preds = %6
  %25 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 32, %26
  %28 = trunc i64 %27 to i32
  %29 = call %struct.vmw_validation_res_node* @vmw_validation_mem_alloc(%struct.vmw_validation_context* %25, i32 %28)
  store %struct.vmw_validation_res_node* %29, %struct.vmw_validation_res_node** %14, align 8
  %30 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %31 = icmp ne %struct.vmw_validation_res_node* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  %33 = call i32 @VMW_DEBUG_USER(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %140

36:                                               ; preds = %24
  %37 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %38 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %36
  %42 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %43 = ptrtoint %struct.vmw_resource* %42 to i64
  %44 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %45 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  %47 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %48 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %51 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %50, i32 0, i32 6
  %52 = call i32 @drm_ht_insert_item(i64 %49, %struct.TYPE_4__* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %7, align 4
  br label %140

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %61 = call i32 @vmw_resource_reference_unless_doomed(%struct.vmw_resource* %60)
  %62 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %63 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %65 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @ESRCH, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %7, align 4
  br label %140

71:                                               ; preds = %59
  %72 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %73 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %75 = getelementptr inbounds %struct.vmw_resource, %struct.vmw_resource* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %71
  %81 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %82 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %81, i32 0, i32 4
  %83 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %84 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %83, i32 0, i32 0
  %85 = call i32 @list_add_tail(i32* %82, i32* %84)
  br label %108

86:                                               ; preds = %71
  %87 = load %struct.vmw_resource*, %struct.vmw_resource** %9, align 8
  %88 = call i32 @vmw_res_type(%struct.vmw_resource* %87)
  switch i32 %88, label %101 [
    i32 130, label %89
    i32 128, label %89
    i32 129, label %95
  ]

89:                                               ; preds = %86, %86
  %90 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %91 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %90, i32 0, i32 4
  %92 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %93 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %92, i32 0, i32 1
  %94 = call i32 @list_add(i32* %91, i32* %93)
  br label %107

95:                                               ; preds = %86
  %96 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %97 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %96, i32 0, i32 4
  %98 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %99 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %98, i32 0, i32 1
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  br label %107

101:                                              ; preds = %86
  %102 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %103 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %102, i32 0, i32 4
  %104 = load %struct.vmw_validation_context*, %struct.vmw_validation_context** %8, align 8
  %105 = getelementptr inbounds %struct.vmw_validation_context, %struct.vmw_validation_context* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  br label %107

107:                                              ; preds = %101, %95, %89
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %21
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %114 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @VMW_RES_DIRTY_SET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %122 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %112, %109
  %124 = load i32*, i32** %13, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %128 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %13, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i8**, i8*** %12, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.vmw_validation_res_node*, %struct.vmw_validation_res_node** %14, align 8
  %136 = getelementptr inbounds %struct.vmw_validation_res_node, %struct.vmw_validation_res_node* %135, i32 0, i32 3
  %137 = bitcast i32* %136 to i8*
  %138 = load i8**, i8*** %12, align 8
  store i8* %137, i8** %138, align 8
  br label %139

139:                                              ; preds = %134, %131
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %139, %68, %55, %32
  %141 = load i32, i32* %7, align 4
  ret i32 %141
}

declare dso_local %struct.vmw_validation_res_node* @vmw_validation_find_res_dup(%struct.vmw_validation_context*, %struct.vmw_resource*) #1

declare dso_local %struct.vmw_validation_res_node* @vmw_validation_mem_alloc(%struct.vmw_validation_context*, i32) #1

declare dso_local i32 @VMW_DEBUG_USER(i8*) #1

declare dso_local i32 @drm_ht_insert_item(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vmw_resource_reference_unless_doomed(%struct.vmw_resource*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @vmw_res_type(%struct.vmw_resource*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
