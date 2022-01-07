; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_init_cmd_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_cmd_parser.c_init_cmd_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32 }
%struct.intel_gvt = type { i32 }
%struct.cmd_entry = type { %struct.TYPE_3__*, i32 }
%struct.cmd_info = type { i32 }

@cmd_info = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s %s duplicated\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@OP_MI_NOOP = common dso_local global i64 0, align 8
@mi_noop_index = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"add %-30s op %04x flag %x devs %02x rings %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_gvt*)* @init_cmd_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cmd_table(%struct.intel_gvt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmd_entry*, align 8
  %6 = alloca %struct.cmd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  %8 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %9 = call i32 @intel_gvt_get_device_type(%struct.intel_gvt* %8)
  store i32 %9, i32* %7, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %113, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_info, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %116

15:                                               ; preds = %10
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_info, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %113

26:                                               ; preds = %15
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.cmd_entry* @kzalloc(i32 16, i32 %27)
  store %struct.cmd_entry* %28, %struct.cmd_entry** %5, align 8
  %29 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %30 = icmp ne %struct.cmd_entry* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %117

34:                                               ; preds = %26
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_info, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %40 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %39, i32 0, i32 0
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %40, align 8
  %41 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %42 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %43 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %48 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.cmd_info* @find_cmd_entry_any_ring(%struct.intel_gvt* %41, i64 %46, i32 %51)
  store %struct.cmd_info* %52, %struct.cmd_info** %6, align 8
  %53 = load %struct.cmd_info*, %struct.cmd_info** %6, align 8
  %54 = icmp ne %struct.cmd_info* %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %34
  %56 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %57 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.cmd_info*, %struct.cmd_info** %6, align 8
  %62 = getelementptr inbounds %struct.cmd_info, %struct.cmd_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @gvt_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %63)
  %65 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %66 = call i32 @kfree(%struct.cmd_entry* %65)
  %67 = load i32, i32* @EEXIST, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %117

69:                                               ; preds = %34
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cmd_info, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @OP_MI_NOOP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* @mi_noop_index, align 4
  br label %80

80:                                               ; preds = %78, %69
  %81 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %82 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %81, i32 0, i32 1
  %83 = call i32 @INIT_HLIST_NODE(i32* %82)
  %84 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %85 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %86 = call i32 @add_cmd_entry(%struct.intel_gvt* %84, %struct.cmd_entry* %85)
  %87 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %88 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %93 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %98 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %103 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.cmd_entry*, %struct.cmd_entry** %5, align 8
  %108 = getelementptr inbounds %struct.cmd_entry, %struct.cmd_entry* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @gvt_dbg_cmd(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %91, i64 %96, i32 %101, i32 %106, i32 %111)
  br label %113

113:                                              ; preds = %80, %25
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  br label %10

116:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %116, %55, %31
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @intel_gvt_get_device_type(%struct.intel_gvt*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.cmd_entry* @kzalloc(i32, i32) #1

declare dso_local %struct.cmd_info* @find_cmd_entry_any_ring(%struct.intel_gvt*, i64, i32) #1

declare dso_local i32 @gvt_err(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.cmd_entry*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @add_cmd_entry(%struct.intel_gvt*, %struct.cmd_entry*) #1

declare dso_local i32 @gvt_dbg_cmd(i8*, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
