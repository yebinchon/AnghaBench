; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_buffer = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.push_buffer*, i32)* @host1x_pushbuffer_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_pushbuffer_pop(%struct.push_buffer* %0, i32 %1) #0 {
  %3 = alloca %struct.push_buffer*, align 8
  %4 = alloca i32, align 4
  store %struct.push_buffer* %0, %struct.push_buffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = mul i32 %5, 8
  %7 = zext i32 %6 to i64
  %8 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %9 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %16 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.push_buffer*, %struct.push_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %25, %22
  store i64 %26, i64* %24, align 8
  br label %27

27:                                               ; preds = %19, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
