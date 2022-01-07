; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-dma-contig.c_vb2_dc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_dc_buf = type { i32, i32, i32, i32, i32, %struct.vb2_dc_buf*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vb2_dc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vb2_dc_put(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_dc_buf*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.vb2_dc_buf*
  store %struct.vb2_dc_buf* %5, %struct.vb2_dc_buf** %3, align 8
  %6 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %6, i32 0, i32 6
  %8 = call i32 @refcount_dec_and_test(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %48

11:                                               ; preds = %1
  %12 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %12, i32 0, i32 5
  %14 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %13, align 8
  %15 = icmp ne %struct.vb2_dc_buf* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %11
  %17 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %18 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %17, i32 0, i32 5
  %19 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %18, align 8
  %20 = call i32 @sg_free_table(%struct.vb2_dc_buf* %19)
  %21 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %22 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %21, i32 0, i32 5
  %23 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %22, align 8
  %24 = call i32 @kfree(%struct.vb2_dc_buf* %23)
  br label %25

25:                                               ; preds = %16, %11
  %26 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %27 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %30 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %33 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %36 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %39 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dma_free_attrs(i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %43 = getelementptr inbounds %struct.vb2_dc_buf, %struct.vb2_dc_buf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @put_device(i32 %44)
  %46 = load %struct.vb2_dc_buf*, %struct.vb2_dc_buf** %3, align 8
  %47 = call i32 @kfree(%struct.vb2_dc_buf* %46)
  br label %48

48:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @sg_free_table(%struct.vb2_dc_buf*) #1

declare dso_local i32 @kfree(%struct.vb2_dc_buf*) #1

declare dso_local i32 @dma_free_attrs(i32, i32, i32, i32, i32) #1

declare dso_local i32 @put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
