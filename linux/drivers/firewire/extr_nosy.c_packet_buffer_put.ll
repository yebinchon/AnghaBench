; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_packet_buffer_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_nosy.c_packet_buffer_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packet_buffer = type { i64, i8*, i32, i32, %struct.packet*, i32, i32 }
%struct.packet = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.packet_buffer*, i8*, i64)* @packet_buffer_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packet_buffer_put(%struct.packet_buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.packet_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.packet_buffer* %0, %struct.packet_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %10 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %14 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %16, i32 0, i32 3
  %18 = call i64 @atomic_read(i32* %17)
  %19 = add i64 %18, 16
  %20 = load i64, i64* %6, align 8
  %21 = add i64 %19, %20
  %22 = icmp ult i64 %15, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  br label %117

28:                                               ; preds = %3
  %29 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %30 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8* %35, i8** %7, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %37, i32 0, i32 4
  %39 = load %struct.packet*, %struct.packet** %38, align 8
  %40 = getelementptr inbounds %struct.packet, %struct.packet* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %41, i32 0, i32 4
  %43 = load %struct.packet*, %struct.packet** %42, align 8
  %44 = getelementptr inbounds %struct.packet, %struct.packet* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8*, i8** %7, align 8
  %49 = icmp ult i8* %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %28
  %51 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %51, i32 0, i32 4
  %53 = load %struct.packet*, %struct.packet** %52, align 8
  %54 = getelementptr inbounds %struct.packet, %struct.packet* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @memcpy(i8* %55, i8* %56, i64 %57)
  %59 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %60 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %59, i32 0, i32 4
  %61 = load %struct.packet*, %struct.packet** %60, align 8
  %62 = getelementptr inbounds %struct.packet, %struct.packet* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = bitcast i8* %65 to %struct.packet*
  %67 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %68 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %67, i32 0, i32 4
  store %struct.packet* %66, %struct.packet** %68, align 8
  br label %107

69:                                               ; preds = %28
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %71, i32 0, i32 4
  %73 = load %struct.packet*, %struct.packet** %72, align 8
  %74 = getelementptr inbounds %struct.packet, %struct.packet* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = ptrtoint i8* %70 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  store i64 %78, i64* %8, align 8
  %79 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %80 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %79, i32 0, i32 4
  %81 = load %struct.packet*, %struct.packet** %80, align 8
  %82 = getelementptr inbounds %struct.packet, %struct.packet* %81, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @memcpy(i8* %83, i8* %84, i64 %85)
  %87 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %88 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8*, i8** %5, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr i8, i8* %90, i64 %91
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 %93, %94
  %96 = call i32 @memcpy(i8* %89, i8* %92, i64 %95)
  %97 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %8, align 8
  %102 = sub i64 %100, %101
  %103 = getelementptr inbounds i8, i8* %99, i64 %102
  %104 = bitcast i8* %103 to %struct.packet*
  %105 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %106 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %105, i32 0, i32 4
  store %struct.packet* %104, %struct.packet** %106, align 8
  br label %107

107:                                              ; preds = %69, %50
  %108 = load i64, i64* %6, align 8
  %109 = add i64 16, %108
  %110 = trunc i64 %109 to i32
  %111 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %112 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %111, i32 0, i32 3
  %113 = call i32 @atomic_add(i32 %110, i32* %112)
  %114 = load %struct.packet_buffer*, %struct.packet_buffer** %4, align 8
  %115 = getelementptr inbounds %struct.packet_buffer, %struct.packet_buffer* %114, i32 0, i32 2
  %116 = call i32 @wake_up_interruptible(i32* %115)
  br label %117

117:                                              ; preds = %107, %23
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
