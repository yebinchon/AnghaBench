; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_buf_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_fpga-mgr.c_fpga_mgr_buf_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpga_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.fpga_image_info = type { i32 }
%struct.page = type { i32 }
%struct.sg_table = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64)* @fpga_mgr_buf_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_mgr_buf_load(%struct.fpga_manager* %0, %struct.fpga_image_info* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fpga_manager*, align 8
  %7 = alloca %struct.fpga_image_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.page**, align 8
  %11 = alloca %struct.sg_table, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.fpga_manager* %0, %struct.fpga_manager** %6, align 8
  store %struct.fpga_image_info* %1, %struct.fpga_image_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %17 = getelementptr inbounds %struct.fpga_manager, %struct.fpga_manager* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %24 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @fpga_mgr_buf_load_mapped(%struct.fpga_manager* %23, %struct.fpga_image_info* %24, i8* %25, i64 %26)
  store i32 %27, i32* %5, align 4
  br label %118

28:                                               ; preds = %4
  %29 = load i8*, i8** %8, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @PAGE_SIZE, align 8
  %34 = call i64 @DIV_ROUND_UP(i64 %32, i64 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = udiv i64 %36, %37
  %39 = sub i64 %34, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.page** @kmalloc_array(i32 %41, i32 8, i32 %42)
  store %struct.page** %43, %struct.page*** %10, align 8
  %44 = load %struct.page**, %struct.page*** %10, align 8
  %45 = icmp ne %struct.page** %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %28
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %118

49:                                               ; preds = %28
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = call i8* @offset_in_page(i8* %51)
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** %12, align 8
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %95, %49
  %58 = load i32, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %57
  %62 = load i8*, i8** %12, align 8
  %63 = call i64 @is_vmalloc_addr(i8* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = load i8*, i8** %12, align 8
  %67 = call %struct.page* @vmalloc_to_page(i8* %66)
  %68 = load %struct.page**, %struct.page*** %10, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.page*, %struct.page** %68, i64 %70
  store %struct.page* %67, %struct.page** %71, align 8
  br label %79

72:                                               ; preds = %61
  %73 = load i8*, i8** %12, align 8
  %74 = call %struct.page* @kmap_to_page(i8* %73)
  %75 = load %struct.page**, %struct.page*** %10, align 8
  %76 = load i32, i32* %14, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.page*, %struct.page** %75, i64 %77
  store %struct.page* %74, %struct.page** %78, align 8
  br label %79

79:                                               ; preds = %72, %65
  %80 = load %struct.page**, %struct.page*** %10, align 8
  %81 = load i32, i32* %14, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.page*, %struct.page** %80, i64 %82
  %84 = load %struct.page*, %struct.page** %83, align 8
  %85 = icmp ne %struct.page* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load %struct.page**, %struct.page*** %10, align 8
  %88 = call i32 @kfree(%struct.page** %87)
  %89 = load i32, i32* @EFAULT, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %5, align 4
  br label %118

91:                                               ; preds = %79
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = getelementptr i8, i8* %93, i64 %92
  store i8* %94, i8** %12, align 8
  br label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  br label %57

98:                                               ; preds = %57
  %99 = load %struct.page**, %struct.page*** %10, align 8
  %100 = load i32, i32* %14, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = call i8* @offset_in_page(i8* %101)
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i32 @sg_alloc_table_from_pages(%struct.sg_table* %11, %struct.page** %99, i32 %100, i8* %102, i64 %103, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load %struct.page**, %struct.page*** %10, align 8
  %107 = call i32 @kfree(%struct.page** %106)
  %108 = load i32, i32* %15, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i32, i32* %15, align 4
  store i32 %111, i32* %5, align 4
  br label %118

112:                                              ; preds = %98
  %113 = load %struct.fpga_manager*, %struct.fpga_manager** %6, align 8
  %114 = load %struct.fpga_image_info*, %struct.fpga_image_info** %7, align 8
  %115 = call i32 @fpga_mgr_buf_load_sg(%struct.fpga_manager* %113, %struct.fpga_image_info* %114, %struct.sg_table* %11)
  store i32 %115, i32* %15, align 4
  %116 = call i32 @sg_free_table(%struct.sg_table* %11)
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %112, %110, %86, %46, %22
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @fpga_mgr_buf_load_mapped(%struct.fpga_manager*, %struct.fpga_image_info*, i8*, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local %struct.page** @kmalloc_array(i32, i32, i32) #1

declare dso_local i8* @offset_in_page(i8*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local %struct.page* @vmalloc_to_page(i8*) #1

declare dso_local %struct.page* @kmap_to_page(i8*) #1

declare dso_local i32 @kfree(%struct.page**) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.sg_table*, %struct.page**, i32, i8*, i64, i32) #1

declare dso_local i32 @fpga_mgr_buf_load_sg(%struct.fpga_manager*, %struct.fpga_image_info*, %struct.sg_table*) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
