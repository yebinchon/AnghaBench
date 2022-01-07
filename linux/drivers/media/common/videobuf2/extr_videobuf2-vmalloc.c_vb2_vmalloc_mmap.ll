; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-vmalloc.c_vb2_vmalloc_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-vmalloc.c_vb2_vmalloc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.vm_area_struct*)* }
%struct.vm_area_struct = type { %struct.TYPE_2__*, i32*, i32 }
%struct.vb2_vmalloc_buf = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"No memory to map\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Remapping vmalloc memory, error: %d\0A\00", align 1
@VM_DONTEXPAND = common dso_local global i32 0, align 4
@vb2_common_vm_ops = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.vm_area_struct*)* @vb2_vmalloc_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2_vmalloc_mmap(i8* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.vb2_vmalloc_buf*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.vb2_vmalloc_buf*
  store %struct.vb2_vmalloc_buf* %9, %struct.vb2_vmalloc_buf** %6, align 8
  %10 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %6, align 8
  %11 = icmp ne %struct.vb2_vmalloc_buf* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %18 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %6, align 8
  %19 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @remap_vmalloc_range(%struct.vm_area_struct* %17, i32 %20, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %47

28:                                               ; preds = %16
  %29 = load i32, i32* @VM_DONTEXPAND, align 4
  %30 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %31 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.vb2_vmalloc_buf*, %struct.vb2_vmalloc_buf** %6, align 8
  %35 = getelementptr inbounds %struct.vb2_vmalloc_buf, %struct.vb2_vmalloc_buf* %34, i32 0, i32 0
  %36 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %37 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %39 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %38, i32 0, i32 0
  store %struct.TYPE_2__* @vb2_common_vm_ops, %struct.TYPE_2__** %39, align 8
  %40 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %41 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*)** %43, align 8
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %46 = call i32 %44(%struct.vm_area_struct* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %28, %24, %12
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @remap_vmalloc_range(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
