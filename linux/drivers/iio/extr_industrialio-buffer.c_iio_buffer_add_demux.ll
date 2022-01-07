; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_add_demux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_add_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { i32 }
%struct.iio_demux_table = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_buffer*, %struct.iio_demux_table**, i32, i32, i32)* @iio_buffer_add_demux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_buffer_add_demux(%struct.iio_buffer* %0, %struct.iio_demux_table** %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_buffer*, align 8
  %8 = alloca %struct.iio_demux_table**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iio_buffer* %0, %struct.iio_buffer** %7, align 8
  store %struct.iio_demux_table** %1, %struct.iio_demux_table*** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %13 = load %struct.iio_demux_table*, %struct.iio_demux_table** %12, align 8
  %14 = icmp ne %struct.iio_demux_table* %13, null
  br i1 %14, label %15, label %46

15:                                               ; preds = %5
  %16 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %17 = load %struct.iio_demux_table*, %struct.iio_demux_table** %16, align 8
  %18 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %21 = load %struct.iio_demux_table*, %struct.iio_demux_table** %20, align 8
  %22 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add i32 %19, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %15
  %28 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %29 = load %struct.iio_demux_table*, %struct.iio_demux_table** %28, align 8
  %30 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %33 = load %struct.iio_demux_table*, %struct.iio_demux_table** %32, align 8
  %34 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add i32 %31, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %42 = load %struct.iio_demux_table*, %struct.iio_demux_table** %41, align 8
  %43 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add i32 %44, %40
  store i32 %45, i32* %43, align 4
  br label %75

46:                                               ; preds = %27, %15, %5
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.iio_demux_table* @kmalloc(i32 16, i32 %47)
  %49 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  store %struct.iio_demux_table* %48, %struct.iio_demux_table** %49, align 8
  %50 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %51 = load %struct.iio_demux_table*, %struct.iio_demux_table** %50, align 8
  %52 = icmp eq %struct.iio_demux_table* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %76

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %59 = load %struct.iio_demux_table*, %struct.iio_demux_table** %58, align 8
  %60 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %63 = load %struct.iio_demux_table*, %struct.iio_demux_table** %62, align 8
  %64 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %67 = load %struct.iio_demux_table*, %struct.iio_demux_table** %66, align 8
  %68 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = load %struct.iio_demux_table**, %struct.iio_demux_table*** %8, align 8
  %70 = load %struct.iio_demux_table*, %struct.iio_demux_table** %69, align 8
  %71 = getelementptr inbounds %struct.iio_demux_table, %struct.iio_demux_table* %70, i32 0, i32 3
  %72 = load %struct.iio_buffer*, %struct.iio_buffer** %7, align 8
  %73 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %72, i32 0, i32 0
  %74 = call i32 @list_add_tail(i32* %71, i32* %73)
  br label %75

75:                                               ; preds = %56, %39
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local %struct.iio_demux_table* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
