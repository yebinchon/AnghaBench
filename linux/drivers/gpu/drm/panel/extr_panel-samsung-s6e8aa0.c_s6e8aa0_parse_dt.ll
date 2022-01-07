; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-samsung-s6e8aa0.c_s6e8aa0_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s6e8aa0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"power-on-delay\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"reset-delay\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"init-delay\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"panel-width-mm\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"panel-height-mm\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"flip-horizontal\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"flip-vertical\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s6e8aa0*)* @s6e8aa0_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6e8aa0_parse_dt(%struct.s6e8aa0* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s6e8aa0*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  store %struct.s6e8aa0* %0, %struct.s6e8aa0** %3, align 8
  %7 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %8 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %7, i32 0, i32 8
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device_node*, %struct.device_node** %5, align 8
  %14 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %15 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %14, i32 0, i32 7
  %16 = call i32 @of_get_videomode(%struct.device_node* %13, i32* %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %50

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %24 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %23, i32 0, i32 6
  %25 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %24)
  %26 = load %struct.device_node*, %struct.device_node** %5, align 8
  %27 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %28 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %27, i32 0, i32 5
  %29 = call i32 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %28)
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %32 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %31, i32 0, i32 4
  %33 = call i32 @of_property_read_u32(%struct.device_node* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* %32)
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %36 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %35, i32 0, i32 3
  %37 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %36)
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %40 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %39, i32 0, i32 2
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  %42 = load %struct.device_node*, %struct.device_node** %5, align 8
  %43 = call i8* @of_property_read_bool(%struct.device_node* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %44 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %45 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i8* @of_property_read_bool(%struct.device_node* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %48 = load %struct.s6e8aa0*, %struct.s6e8aa0** %3, align 8
  %49 = getelementptr inbounds %struct.s6e8aa0, %struct.s6e8aa0* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %21, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @of_get_videomode(%struct.device_node*, i32*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
