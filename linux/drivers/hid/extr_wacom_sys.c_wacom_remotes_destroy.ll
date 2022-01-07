; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remotes_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_remotes_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom = type { %struct.wacom_remote* }
%struct.wacom_remote = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wacom_remotes_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_remotes_destroy(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.wacom*, align 8
  %4 = alloca %struct.wacom_remote*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.wacom*
  store %struct.wacom* %6, %struct.wacom** %3, align 8
  %7 = load %struct.wacom*, %struct.wacom** %3, align 8
  %8 = getelementptr inbounds %struct.wacom, %struct.wacom* %7, i32 0, i32 0
  %9 = load %struct.wacom_remote*, %struct.wacom_remote** %8, align 8
  store %struct.wacom_remote* %9, %struct.wacom_remote** %4, align 8
  %10 = load %struct.wacom_remote*, %struct.wacom_remote** %4, align 8
  %11 = icmp ne %struct.wacom_remote* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.wacom_remote*, %struct.wacom_remote** %4, align 8
  %15 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kobject_put(i32 %16)
  %18 = load %struct.wacom_remote*, %struct.wacom_remote** %4, align 8
  %19 = getelementptr inbounds %struct.wacom_remote, %struct.wacom_remote* %18, i32 0, i32 0
  %20 = call i32 @kfifo_free(i32* %19)
  %21 = load %struct.wacom*, %struct.wacom** %3, align 8
  %22 = getelementptr inbounds %struct.wacom, %struct.wacom* %21, i32 0, i32 0
  store %struct.wacom_remote* null, %struct.wacom_remote** %22, align 8
  br label %23

23:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @kobject_put(i32) #1

declare dso_local i32 @kfifo_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
