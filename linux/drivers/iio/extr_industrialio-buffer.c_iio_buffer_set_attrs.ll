; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_set_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_buffer_set_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_buffer = type { %struct.attribute** }
%struct.attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_buffer_set_attrs(%struct.iio_buffer* %0, %struct.attribute** %1) #0 {
  %3 = alloca %struct.iio_buffer*, align 8
  %4 = alloca %struct.attribute**, align 8
  store %struct.iio_buffer* %0, %struct.iio_buffer** %3, align 8
  store %struct.attribute** %1, %struct.attribute*** %4, align 8
  %5 = load %struct.attribute**, %struct.attribute*** %4, align 8
  %6 = load %struct.iio_buffer*, %struct.iio_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.iio_buffer, %struct.iio_buffer* %6, i32 0, i32 0
  store %struct.attribute** %5, %struct.attribute*** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
