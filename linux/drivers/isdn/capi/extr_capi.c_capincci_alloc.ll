; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_capi.c_capincci_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_capi.c_capincci_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capincci = type { i32, %struct.capidev*, i32 }
%struct.capidev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.capincci* (%struct.capidev*, i32)* @capincci_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.capincci* @capincci_alloc(%struct.capidev* %0, i32 %1) #0 {
  %3 = alloca %struct.capincci*, align 8
  %4 = alloca %struct.capidev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.capincci*, align 8
  store %struct.capidev* %0, %struct.capidev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.capincci* @kzalloc(i32 24, i32 %7)
  store %struct.capincci* %8, %struct.capincci** %6, align 8
  %9 = load %struct.capincci*, %struct.capincci** %6, align 8
  %10 = icmp ne %struct.capincci* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.capincci* null, %struct.capincci** %3, align 8
  br label %28

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.capincci*, %struct.capincci** %6, align 8
  %15 = getelementptr inbounds %struct.capincci, %struct.capincci* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.capidev*, %struct.capidev** %4, align 8
  %17 = load %struct.capincci*, %struct.capincci** %6, align 8
  %18 = getelementptr inbounds %struct.capincci, %struct.capincci* %17, i32 0, i32 1
  store %struct.capidev* %16, %struct.capidev** %18, align 8
  %19 = load %struct.capidev*, %struct.capidev** %4, align 8
  %20 = load %struct.capincci*, %struct.capincci** %6, align 8
  %21 = call i32 @capincci_alloc_minor(%struct.capidev* %19, %struct.capincci* %20)
  %22 = load %struct.capincci*, %struct.capincci** %6, align 8
  %23 = getelementptr inbounds %struct.capincci, %struct.capincci* %22, i32 0, i32 0
  %24 = load %struct.capidev*, %struct.capidev** %4, align 8
  %25 = getelementptr inbounds %struct.capidev, %struct.capidev* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.capincci*, %struct.capincci** %6, align 8
  store %struct.capincci* %27, %struct.capincci** %3, align 8
  br label %28

28:                                               ; preds = %12, %11
  %29 = load %struct.capincci*, %struct.capincci** %3, align 8
  ret %struct.capincci* %29
}

declare dso_local %struct.capincci* @kzalloc(i32, i32) #1

declare dso_local i32 @capincci_alloc_minor(%struct.capidev*, %struct.capincci*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
