; ModuleID = '/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_device_node_matches.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fsi/extr_fsi-core.c_fsi_device_node_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"node %s matches probed address, but not size (got 0x%x, expected 0x%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, i64, i64)* @fsi_device_node_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_device_node_matches(%struct.device* %0, %struct.device_node* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device_node*, %struct.device_node** %7, align 8
  %16 = call i32 @of_n_addr_cells(%struct.device_node* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.device_node*, %struct.device_node** %7, align 8
  %18 = call i32 @of_n_size_cells(%struct.device_node* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %55

25:                                               ; preds = %21
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = call i32* @of_get_property(%struct.device_node* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %10)
  store i32* %27, i32** %13, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %25
  store i32 0, i32* %5, align 4
  br label %55

34:                                               ; preds = %30
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @of_read_number(i32* %35, i32 1)
  %37 = load i64, i64* %8, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %55

40:                                               ; preds = %34
  %41 = load i32*, i32** %13, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = call i64 @of_read_number(i32* %42, i32 1)
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %14, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %6, align 8
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i32 @of_node_full_name(%struct.device_node* %49)
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @dev_warn(%struct.device* %48, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51, i64 %52)
  br label %54

54:                                               ; preds = %47, %40
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %39, %33, %24
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @of_n_addr_cells(%struct.device_node*) #1

declare dso_local i32 @of_n_size_cells(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_read_number(i32*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i64, i64) #1

declare dso_local i32 @of_node_full_name(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
