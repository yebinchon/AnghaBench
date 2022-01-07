; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_dpi_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_dpi_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_qplib_dpi_tbl = type { i32, i32, i32, i64, i32* }

@RCFW_DBR_PCI_BAR_REGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DBR BAR region %d already mapped\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"BAR region %d resc start failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid DBR length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"FP: DBR BAR region %d mapping failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_dpi_tbl*, i32)* @bnxt_qplib_alloc_dpi_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_alloc_dpi_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_dpi_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_dpi_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_dpi_tbl* %1, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @RCFW_DBR_PCI_BAR_REGION, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EALREADY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %154

26:                                               ; preds = %3
  %27 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pci_resource_start(%struct.TYPE_4__* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %26
  %35 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %36 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %154

43:                                               ; preds = %26
  %44 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %45 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @pci_resource_len(%struct.TYPE_4__* %46, i32 %47)
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = sub nsw i32 %55, 1
  %57 = and i32 %54, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %53, %43
  %60 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %61 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @dev_err(i32* %63, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %154

68:                                               ; preds = %53
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ioremap_nocache(i32 %71, i32 %72)
  %74 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %75 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  %76 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %77 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %68
  %81 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %82 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %154

89:                                               ; preds = %68
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %90, %91
  %93 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %94 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* @PAGE_SIZE, align 4
  %97 = sdiv i32 %95, %96
  %98 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %99 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %101 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32* @kcalloc(i32 %102, i32 8, i32 %103)
  %105 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %106 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  %107 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %108 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %107, i32 0, i32 4
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %89
  br label %144

112:                                              ; preds = %89
  %113 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %114 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = ashr i32 %115, 3
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %112
  store i32 1, i32* %11, align 4
  br label %120

120:                                              ; preds = %119, %112
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @GFP_KERNEL, align 4
  %123 = call i64 @kmalloc(i32 %121, i32 %122)
  %124 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %125 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %124, i32 0, i32 3
  store i64 %123, i64* %125, align 8
  %126 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %127 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %120
  %131 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %132 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @kfree(i32* %133)
  %135 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %136 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %135, i32 0, i32 4
  store i32* null, i32** %136, align 8
  br label %144

137:                                              ; preds = %120
  %138 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %139 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i32*
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @memset(i32* %141, i32 255, i32 %142)
  store i32 0, i32* %4, align 4
  br label %154

144:                                              ; preds = %130, %111
  %145 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %146 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %145, i32 0, i32 0
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load %struct.bnxt_qplib_dpi_tbl*, %struct.bnxt_qplib_dpi_tbl** %6, align 8
  %149 = getelementptr inbounds %struct.bnxt_qplib_dpi_tbl, %struct.bnxt_qplib_dpi_tbl* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @pci_iounmap(%struct.TYPE_4__* %147, i32 %150)
  %152 = load i32, i32* @ENOMEM, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %4, align 4
  br label %154

154:                                              ; preds = %144, %137, %80, %59, %34, %17
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @pci_resource_start(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ioremap_nocache(i32, i32) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
