; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_event = type { i32, %struct.TYPE_2__, %struct.i40iw_cm_node* }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.i40iw_cm_node = type { i32, i64, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"node=%p event=%p type=%u dst=%pI4 src=%pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_cm_event* (%struct.i40iw_cm_node*, i32)* @i40iw_create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_cm_event* @i40iw_create_event(%struct.i40iw_cm_node* %0, i32 %1) #0 {
  %3 = alloca %struct.i40iw_cm_event*, align 8
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_cm_event*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %8 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.i40iw_cm_event* null, %struct.i40iw_cm_event** %3, align 8
  br label %78

12:                                               ; preds = %2
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.i40iw_cm_event* @kzalloc(i32 40, i32 %13)
  store %struct.i40iw_cm_event* %14, %struct.i40iw_cm_event** %6, align 8
  %15 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %16 = icmp ne %struct.i40iw_cm_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store %struct.i40iw_cm_event* null, %struct.i40iw_cm_event** %3, align 8
  br label %78

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %23 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %23, i32 0, i32 2
  store %struct.i40iw_cm_node* %22, %struct.i40iw_cm_node** %24, align 8
  %25 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %26 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %30 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %28, i32 %31, i32 4)
  %33 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(i32 %36, i32 %39, i32 4)
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %42 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %45 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i32 %43, i32* %46, align 4
  %47 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %48 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %54 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %57 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 %55, i64* %58, align 8
  %59 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %60 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %64 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %67 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %71 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @i40iw_debug(i32 %61, i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.i40iw_cm_node* %63, %struct.i40iw_cm_event* %64, i32 %65, i32 %69, i32 %73)
  %75 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  %76 = call i32 @i40iw_cm_post_event(%struct.i40iw_cm_event* %75)
  %77 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %6, align 8
  store %struct.i40iw_cm_event* %77, %struct.i40iw_cm_event** %3, align 8
  br label %78

78:                                               ; preds = %18, %17, %11
  %79 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %3, align 8
  ret %struct.i40iw_cm_event* %79
}

declare dso_local %struct.i40iw_cm_event* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @i40iw_debug(i32, i32, i8*, %struct.i40iw_cm_node*, %struct.i40iw_cm_event*, i32, i32, i32) #1

declare dso_local i32 @i40iw_cm_post_event(%struct.i40iw_cm_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
