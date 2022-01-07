; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_vsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_sc_vsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_sc_vsi = type { %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.i40iw_vsi_init_info = type { %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@I40IW_MAX_USER_PRIORITY = common dso_local global i32 0, align 4
@I40IW_DEBUG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"qset[%d]: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_sc_vsi_init(%struct.i40iw_sc_vsi* %0, %struct.i40iw_vsi_init_info* %1) #0 {
  %3 = alloca %struct.i40iw_sc_vsi*, align 8
  %4 = alloca %struct.i40iw_vsi_init_info*, align 8
  %5 = alloca i32, align 4
  store %struct.i40iw_sc_vsi* %0, %struct.i40iw_sc_vsi** %3, align 8
  store %struct.i40iw_vsi_init_info* %1, %struct.i40iw_vsi_init_info** %4, align 8
  %6 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %7 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %15 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %17 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %22 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %24 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %27 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %29 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @i40iw_fill_qos_list(i32* %32)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %85, %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @I40IW_MAX_USER_PRIORITY, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %34
  %39 = load %struct.i40iw_vsi_init_info*, %struct.i40iw_vsi_init_info** %4, align 8
  %40 = getelementptr inbounds %struct.i40iw_vsi_init_info, %struct.i40iw_vsi_init_info* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 %47, i32* %54, align 4
  %55 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %56 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I40IW_DEBUG_DCB, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %61 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @i40iw_debug(i32 %57, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %67)
  %69 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %70 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = call i32 @spin_lock_init(i32* %75)
  %77 = load %struct.i40iw_sc_vsi*, %struct.i40iw_sc_vsi** %3, align 8
  %78 = getelementptr inbounds %struct.i40iw_sc_vsi, %struct.i40iw_sc_vsi* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @INIT_LIST_HEAD(i32* %83)
  br label %85

85:                                               ; preds = %38
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %34

88:                                               ; preds = %34
  ret void
}

declare dso_local i32 @i40iw_fill_qos_list(i32*) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
