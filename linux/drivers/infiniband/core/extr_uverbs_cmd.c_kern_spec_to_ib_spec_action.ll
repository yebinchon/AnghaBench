; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_kern_spec_to_ib_spec_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_kern_spec_to_ib_spec_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32 }
%struct.ib_uverbs_flow_spec = type { i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%union.ib_flow_spec = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i8* }
%struct.ib_uflow_resources = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@flow_action = common dso_local global i32 0, align 4
@UVERBS_OBJECT_FLOW_ACTION = common dso_local global i32 0, align 4
@counters = common dso_local global i32 0, align 4
@UVERBS_OBJECT_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*, %struct.ib_uverbs_flow_spec*, %union.ib_flow_spec*, %struct.ib_uflow_resources*)* @kern_spec_to_ib_spec_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_spec_to_ib_spec_action(%struct.uverbs_attr_bundle* %0, %struct.ib_uverbs_flow_spec* %1, %union.ib_flow_spec* %2, %struct.ib_uflow_resources* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uverbs_attr_bundle*, align 8
  %7 = alloca %struct.ib_uverbs_flow_spec*, align 8
  %8 = alloca %union.ib_flow_spec*, align 8
  %9 = alloca %struct.ib_uflow_resources*, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %6, align 8
  store %struct.ib_uverbs_flow_spec* %1, %struct.ib_uverbs_flow_spec** %7, align 8
  store %union.ib_flow_spec* %2, %union.ib_flow_spec** %8, align 8
  store %struct.ib_uflow_resources* %3, %struct.ib_uflow_resources** %9, align 8
  %10 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %11 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %14 = bitcast %union.ib_flow_spec* %13 to i32*
  store i32 %12, i32* %14, align 8
  %15 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %16 = bitcast %union.ib_flow_spec* %15 to i32*
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %143 [
    i32 128, label %18
    i32 130, label %39
    i32 129, label %53
    i32 131, label %98
  ]

18:                                               ; preds = %4
  %19 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %20 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 4
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %147

28:                                               ; preds = %18
  %29 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %30 = bitcast %union.ib_flow_spec* %29 to %struct.TYPE_9__*
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %33 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %37 = bitcast %union.ib_flow_spec* %36 to %struct.TYPE_9__*
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  br label %146

39:                                               ; preds = %4
  %40 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %41 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %44, 4
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %147

49:                                               ; preds = %39
  %50 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %51 = bitcast %union.ib_flow_spec* %50 to %struct.TYPE_12__*
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  store i32 4, i32* %52, align 8
  br label %146

53:                                               ; preds = %4
  %54 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %55 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ne i64 %58, 4
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load i32, i32* @EOPNOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %147

63:                                               ; preds = %53
  %64 = load i32, i32* @flow_action, align 4
  %65 = load i32, i32* @UVERBS_OBJECT_FLOW_ACTION, align 4
  %66 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %67 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %6, align 8
  %71 = call i8* @uobj_get_obj_read(i32 %64, i32 %65, i32 %69, %struct.uverbs_attr_bundle* %70)
  %72 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %73 = bitcast %union.ib_flow_spec* %72 to %struct.TYPE_14__*
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i8* %71, i8** %74, align 8
  %75 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %76 = bitcast %union.ib_flow_spec* %75 to %struct.TYPE_14__*
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %63
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %147

83:                                               ; preds = %63
  %84 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %85 = bitcast %union.ib_flow_spec* %84 to %struct.TYPE_14__*
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %9, align 8
  %88 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %89 = bitcast %union.ib_flow_spec* %88 to %struct.TYPE_14__*
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @flow_resources_add(%struct.ib_uflow_resources* %87, i32 129, i8* %91)
  %93 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %94 = bitcast %union.ib_flow_spec* %93 to %struct.TYPE_14__*
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @uobj_put_obj_read(i8* %96)
  br label %146

98:                                               ; preds = %4
  %99 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %100 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 4
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %147

108:                                              ; preds = %98
  %109 = load i32, i32* @counters, align 4
  %110 = load i32, i32* @UVERBS_OBJECT_COUNTERS, align 4
  %111 = load %struct.ib_uverbs_flow_spec*, %struct.ib_uverbs_flow_spec** %7, align 8
  %112 = getelementptr inbounds %struct.ib_uverbs_flow_spec, %struct.ib_uverbs_flow_spec* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %6, align 8
  %116 = call i8* @uobj_get_obj_read(i32 %109, i32 %110, i32 %114, %struct.uverbs_attr_bundle* %115)
  %117 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %118 = bitcast %union.ib_flow_spec* %117 to %struct.TYPE_16__*
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 1
  store i8* %116, i8** %119, align 8
  %120 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %121 = bitcast %union.ib_flow_spec* %120 to %struct.TYPE_16__*
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %108
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %147

128:                                              ; preds = %108
  %129 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %130 = bitcast %union.ib_flow_spec* %129 to %struct.TYPE_16__*
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i32 4, i32* %131, align 8
  %132 = load %struct.ib_uflow_resources*, %struct.ib_uflow_resources** %9, align 8
  %133 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %134 = bitcast %union.ib_flow_spec* %133 to %struct.TYPE_16__*
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @flow_resources_add(%struct.ib_uflow_resources* %132, i32 131, i8* %136)
  %138 = load %union.ib_flow_spec*, %union.ib_flow_spec** %8, align 8
  %139 = bitcast %union.ib_flow_spec* %138 to %struct.TYPE_16__*
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @uobj_put_obj_read(i8* %141)
  br label %146

143:                                              ; preds = %4
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %5, align 4
  br label %147

146:                                              ; preds = %128, %83, %49, %28
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %146, %143, %125, %105, %80, %60, %46, %25
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i8* @uobj_get_obj_read(i32, i32, i32, %struct.uverbs_attr_bundle*) #1

declare dso_local i32 @flow_resources_add(%struct.ib_uflow_resources*, i32, i8*) #1

declare dso_local i32 @uobj_put_obj_read(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
