; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/adv7511/extr_adv7533.c_adv7533_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.adv7511 = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"adi,dsi-lanes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"adi,disable-timing-generator\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adv7533_parse_dt(%struct.device_node* %0, %struct.adv7511* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.adv7511*, align 8
  %6 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.adv7511* %1, %struct.adv7511** %5, align 8
  %7 = load %struct.device_node*, %struct.device_node** %4, align 8
  %8 = call i32 @of_property_read_u32(%struct.device_node* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %6)
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %48

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %20 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_graph_get_remote_node(%struct.device_node* %21, i32 0, i32 0)
  %23 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %24 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %26 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %17
  %33 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %34 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @of_node_put(i32 %35)
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i32 @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %43 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %45 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %44, i32 0, i32 2
  store i32 1, i32* %45, align 4
  %46 = load %struct.adv7511*, %struct.adv7511** %5, align 8
  %47 = getelementptr inbounds %struct.adv7511, %struct.adv7511* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %32, %29, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_graph_get_remote_node(%struct.device_node*, i32, i32) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
