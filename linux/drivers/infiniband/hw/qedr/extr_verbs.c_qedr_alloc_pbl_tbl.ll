; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_pbl_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_pbl_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_pbl = type { i32, i8* }
%struct.qedr_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.qedr_pbl_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qedr_pbl* (%struct.qedr_dev*, %struct.qedr_pbl_info*, i32)* @qedr_alloc_pbl_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qedr_pbl* @qedr_alloc_pbl_tbl(%struct.qedr_dev* %0, %struct.qedr_pbl_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qedr_pbl*, align 8
  %5 = alloca %struct.qedr_dev*, align 8
  %6 = alloca %struct.qedr_pbl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.qedr_pbl*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %5, align 8
  store %struct.qedr_pbl_info* %1, %struct.qedr_pbl_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %15 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %14, i32 0, i32 0
  %16 = load %struct.pci_dev*, %struct.pci_dev** %15, align 8
  store %struct.pci_dev* %16, %struct.pci_dev** %8, align 8
  %17 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %18 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.qedr_pbl* @kcalloc(i32 %19, i32 16, i32 %20)
  store %struct.qedr_pbl* %21, %struct.qedr_pbl** %9, align 8
  %22 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %23 = icmp ne %struct.qedr_pbl* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.qedr_pbl* @ERR_PTR(i32 %26)
  store %struct.qedr_pbl* %27, %struct.qedr_pbl** %4, align 8
  br label %128

28:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %59, %28
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %32 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %62

35:                                               ; preds = %29
  %36 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %39 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i8* @dma_alloc_coherent(i32* %37, i32 %40, i32* %11, i32 %41)
  store i8* %42, i8** %12, align 8
  %43 = load i8*, i8** %12, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %92

46:                                               ; preds = %35
  %47 = load i8*, i8** %12, align 8
  %48 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %48, i64 %50
  %52 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %51, i32 0, i32 1
  store i8* %47, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %54, i64 %56
  %58 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %29

62:                                               ; preds = %29
  %63 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %64 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %63, i64 0
  %65 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to i32*
  store i32* %67, i32** %10, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %87, %62
  %69 = load i32, i32* %13, align 4
  %70 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %71 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %76, i64 %79
  %81 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %75
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %68

90:                                               ; preds = %68
  %91 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  store %struct.qedr_pbl* %91, %struct.qedr_pbl** %4, align 8
  br label %128

92:                                               ; preds = %45
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %117, %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %100 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %99, i32 0, i32 0
  %101 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %102 = getelementptr inbounds %struct.qedr_pbl_info, %struct.qedr_pbl_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %104, i64 %106
  %108 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %111 = load i32, i32* %13, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %110, i64 %112
  %114 = getelementptr inbounds %struct.qedr_pbl, %struct.qedr_pbl* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @dma_free_coherent(i32* %100, i32 %103, i8* %109, i32 %115)
  br label %117

117:                                              ; preds = %98
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %13, align 4
  br label %95

120:                                              ; preds = %95
  %121 = load %struct.qedr_dev*, %struct.qedr_dev** %5, align 8
  %122 = load %struct.qedr_pbl_info*, %struct.qedr_pbl_info** %6, align 8
  %123 = load %struct.qedr_pbl*, %struct.qedr_pbl** %9, align 8
  %124 = call i32 @qedr_free_pbl(%struct.qedr_dev* %121, %struct.qedr_pbl_info* %122, %struct.qedr_pbl* %123)
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.qedr_pbl* @ERR_PTR(i32 %126)
  store %struct.qedr_pbl* %127, %struct.qedr_pbl** %4, align 8
  br label %128

128:                                              ; preds = %120, %90, %24
  %129 = load %struct.qedr_pbl*, %struct.qedr_pbl** %4, align 8
  ret %struct.qedr_pbl* %129
}

declare dso_local %struct.qedr_pbl* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.qedr_pbl* @ERR_PTR(i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @qedr_free_pbl(%struct.qedr_dev*, %struct.qedr_pbl_info*, %struct.qedr_pbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
