; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }
%struct.qedr_ucontext = type { i64, i64 }
%struct.qedr_dev = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@QEDR_MSG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"mmap invoked with vm_start=0x%pK, vm_end=0x%pK,vm_pgoff=0x%pK; dpi_start=0x%pK dpi_size=0x%x\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"failed mmap, addresses must be page aligned: start=0x%pK, end=0x%pK\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"failed mmap, vm_pgoff=0x%lx is not authorized\0A\00", align 1
@.str.3 = private unnamed_addr constant [91 x i8] c"failed mmap, pages are outside of dpi; page address=0x%pK, dpi_start=0x%pK, dpi_size=0x%x\0A\00", align 1
@VM_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"failed mmap, cannot map doorbell bar for read\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qedr_mmap(%struct.ib_ucontext* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ucontext*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.qedr_ucontext*, align 8
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %11 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %12 = call %struct.qedr_ucontext* @get_qedr_ucontext(%struct.ib_ucontext* %11)
  store %struct.qedr_ucontext* %12, %struct.qedr_ucontext** %6, align 8
  %13 = load %struct.ib_ucontext*, %struct.ib_ucontext** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qedr_dev* @get_qedr_dev(i32 %15)
  store %struct.qedr_dev* %16, %struct.qedr_dev** %7, align 8
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %8, align 8
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  store i64 %28, i64* %9, align 8
  %29 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %30 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %33 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %36 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = mul i64 %34, %37
  %39 = add i64 %31, %38
  store i64 %39, i64* %10, align 8
  %40 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %41 = load i32, i32* @QEDR_MSG_INIT, align 4
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %47 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load i64, i64* %10, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %57 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @DP_DEBUG(%struct.qedr_dev* %40, i32 %41, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %49, i8* %53, i8* %55, i64 %58)
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %2
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %68, %2
  %76 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %82 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i8*
  %85 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %76, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %80, i8* %84)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %160

88:                                               ; preds = %68
  %89 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i32 @qedr_search_mmap(%struct.qedr_ucontext* %89, i64 %90, i64 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %88
  %95 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %95, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %160

102:                                              ; preds = %88
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %10, align 8
  %105 = icmp ult i64 %103, %104
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = add i64 %107, %108
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %112 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add i64 %110, %113
  %115 = icmp ugt i64 %109, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %106, %102
  %117 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = inttoptr i64 %118 to i8*
  %120 = load i64, i64* %10, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %6, align 8
  %123 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %117, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.3, i64 0, i64 0), i8* %119, i8* %121, i64 %124)
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %160

128:                                              ; preds = %106
  %129 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %130 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @VM_READ, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %137 = call i32 (%struct.qedr_dev*, i8*, ...) @DP_ERR(%struct.qedr_dev* %136, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %160

140:                                              ; preds = %128
  %141 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %142 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @pgprot_writecombine(i32 %143)
  %145 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %146 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %145, i32 0, i32 4
  store i32 %144, i32* %146, align 4
  %147 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %153 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %9, align 8
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %157 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %147, i32 %151, i64 %154, i64 %155, i32 %158)
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %140, %135, %116, %94, %75
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.qedr_ucontext* @get_qedr_ucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i8*, i8*, i8*, i8*, i64) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, ...) #1

declare dso_local i32 @qedr_search_mmap(%struct.qedr_ucontext*, i64, i64) #1

declare dso_local i32 @pgprot_writecombine(i32) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
