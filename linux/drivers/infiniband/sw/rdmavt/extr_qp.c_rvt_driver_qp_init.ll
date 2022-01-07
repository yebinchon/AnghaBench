; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_driver_qp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rdmavt/extr_qp.c_rvt_driver_qp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_dev_info = type { %struct.TYPE_9__*, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvt_driver_qp_init(%struct.rvt_dev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvt_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvt_dev_info* %0, %struct.rvt_dev_info** %3, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %9 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %163

16:                                               ; preds = %1
  %17 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %16
  %23 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %22
  %29 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %30 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %36 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %42 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %34, %28, %22, %16
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %163

49:                                               ; preds = %40
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %52 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.TYPE_9__* @kzalloc_node(i32 24, i32 %50, i32 %54)
  %56 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %57 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %56, i32 0, i32 0
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %57, align 8
  %58 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %59 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = icmp ne %struct.TYPE_9__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %49
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %163

65:                                               ; preds = %49
  %66 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %67 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %71 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 8
  %74 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %75 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ilog2(i32 %77)
  %79 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %80 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 4
  store i32 %78, i32* %82, align 4
  %83 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %84 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GFP_KERNEL, align 4
  %89 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %90 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_9__* @kmalloc_array_node(i32 %87, i32 24, i32 %88, i32 %92)
  %94 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %95 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %97, align 8
  %98 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %99 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %98, i32 0, i32 0
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = icmp ne %struct.TYPE_9__* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %65
  br label %157

105:                                              ; preds = %65
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %124, %105
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %109 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %108, i32 0, i32 0
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp slt i32 %107, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %106
  %115 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %116 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %115, i32 0, i32 0
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = call i32 @RCU_INIT_POINTER(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %122, i32* null)
  br label %124

124:                                              ; preds = %114
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %4, align 4
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %129 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = call i32 @spin_lock_init(i32* %131)
  %133 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %134 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %135 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %134, i32 0, i32 0
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = call i64 @init_qpn_table(%struct.rvt_dev_info* %133, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %127
  br label %145

141:                                              ; preds = %127
  %142 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %143 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %142, i32 0, i32 1
  %144 = call i32 @spin_lock_init(i32* %143)
  store i32 0, i32* %2, align 4
  br label %163

145:                                              ; preds = %140
  %146 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %147 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = call i32 @kfree(%struct.TYPE_9__* %150)
  %152 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %153 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = call i32 @free_qpn_table(i32* %155)
  br label %157

157:                                              ; preds = %145, %104
  %158 = load %struct.rvt_dev_info*, %struct.rvt_dev_info** %3, align 8
  %159 = getelementptr inbounds %struct.rvt_dev_info, %struct.rvt_dev_info* %158, i32 0, i32 0
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = call i32 @kfree(%struct.TYPE_9__* %160)
  %162 = load i32, i32* %5, align 4
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %157, %141, %62, %46, %13
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_9__* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local %struct.TYPE_9__* @kmalloc_array_node(i32, i32, i32, i32) #1

declare dso_local i32 @RCU_INIT_POINTER(%struct.TYPE_9__* byval(%struct.TYPE_9__) align 8, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @init_qpn_table(%struct.rvt_dev_info*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

declare dso_local i32 @free_qpn_table(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
