; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_write_init_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_write_init_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fpga_image_info = type { i32 }
%struct.sg_table = type { i32, i32 }
%struct.sg_mapping_iter = type { i64, i8* }

@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, %struct.sg_table*)* @fpga_mgr_write_init_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_mgr_write_init_sg(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, %struct.sg_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fpga_manager*, align 8
  %6 = alloca %struct.fpga_image_info*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca %struct.sg_mapping_iter, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %5, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %6, align 8
  store %struct.sg_table* %2, %struct.sg_table** %7, align 8
  %12 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %13 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %20 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %21 = call i32 @fpga_mgr_write_init_buf(%struct.fpga_manager* %19, %struct.fpga_image_info* %20, i8* null, i64 0)
  store i32 %21, i32* %4, align 4
  br label %88

22:                                               ; preds = %3
  %23 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %24 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %27 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %30 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %8, i32 %25, i32 %28, i32 %29)
  %31 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %37 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sge i64 %35, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %33
  %43 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %44 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %45 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @fpga_mgr_write_init_buf(%struct.fpga_manager* %43, %struct.fpga_image_info* %44, i8* %46, i64 %48)
  store i32 %49, i32* %11, align 4
  %50 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %8)
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  br label %88

52:                                               ; preds = %33, %22
  %53 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %8)
  %54 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %55 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kmalloc(i64 %58, i32 %59)
  store i8* %60, i8** %10, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %52
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %88

66:                                               ; preds = %52
  %67 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %68 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %71 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i8*, i8** %10, align 8
  %74 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %75 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i64 @sg_copy_to_buffer(i32 %69, i32 %72, i8* %73, i64 %78)
  store i64 %79, i64* %9, align 8
  %80 = load %struct.fpga_manager*, %struct.fpga_manager** %5, align 8
  %81 = load %struct.fpga_image_info*, %struct.fpga_image_info** %6, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @fpga_mgr_write_init_buf(%struct.fpga_manager* %80, %struct.fpga_image_info* %81, i8* %82, i64 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 @kfree(i8* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %66, %63, %42, %18
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @fpga_mgr_write_init_buf(%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @sg_copy_to_buffer(i32, i32, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
