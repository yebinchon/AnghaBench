; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_get_current_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_gdp.c_sti_gdp_get_current_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_gdp_node_list = type { i32, i32 }
%struct.sti_gdp = type { i32, %struct.sti_gdp_node_list*, i64 }

@GAM_GDP_NVN_OFFSET = common dso_local global i64 0, align 8
@GDP_NODE_NB_BANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Warning, NVN 0x%08X for %s does not match any node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sti_gdp_node_list* (%struct.sti_gdp*)* @sti_gdp_get_current_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sti_gdp_node_list* @sti_gdp_get_current_nodes(%struct.sti_gdp* %0) #0 {
  %2 = alloca %struct.sti_gdp_node_list*, align 8
  %3 = alloca %struct.sti_gdp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sti_gdp* %0, %struct.sti_gdp** %3, align 8
  %6 = load %struct.sti_gdp*, %struct.sti_gdp** %3, align 8
  %7 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GAM_GDP_NVN_OFFSET, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @GDP_NODE_NB_BANK, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.sti_gdp*, %struct.sti_gdp** %3, align 8
  %23 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %22, i32 0, i32 1
  %24 = load %struct.sti_gdp_node_list*, %struct.sti_gdp_node_list** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sti_gdp_node_list, %struct.sti_gdp_node_list* %24, i64 %26
  %28 = getelementptr inbounds %struct.sti_gdp_node_list, %struct.sti_gdp_node_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %21, %29
  br i1 %30, label %42, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.sti_gdp*, %struct.sti_gdp** %3, align 8
  %34 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %33, i32 0, i32 1
  %35 = load %struct.sti_gdp_node_list*, %struct.sti_gdp_node_list** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.sti_gdp_node_list, %struct.sti_gdp_node_list* %35, i64 %37
  %39 = getelementptr inbounds %struct.sti_gdp_node_list, %struct.sti_gdp_node_list* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %32, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %31, %20
  %43 = load %struct.sti_gdp*, %struct.sti_gdp** %3, align 8
  %44 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %43, i32 0, i32 1
  %45 = load %struct.sti_gdp_node_list*, %struct.sti_gdp_node_list** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.sti_gdp_node_list, %struct.sti_gdp_node_list* %45, i64 %47
  store %struct.sti_gdp_node_list* %48, %struct.sti_gdp_node_list** %2, align 8
  br label %60

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %16

53:                                               ; preds = %16
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.sti_gdp*, %struct.sti_gdp** %3, align 8
  %57 = getelementptr inbounds %struct.sti_gdp, %struct.sti_gdp* %56, i32 0, i32 0
  %58 = call i32 @sti_plane_to_str(i32* %57)
  %59 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58)
  store %struct.sti_gdp_node_list* null, %struct.sti_gdp_node_list** %2, align 8
  br label %60

60:                                               ; preds = %54, %42
  %61 = load %struct.sti_gdp_node_list*, %struct.sti_gdp_node_list** %2, align 8
  ret %struct.sti_gdp_node_list* %61
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @sti_plane_to_str(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
