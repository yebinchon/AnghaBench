; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mxl5xx.c_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mxl* }
%struct.mxl = type { i64, %struct.mxl*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_frontend*)* @release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %4 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %4, i32 0, i32 0
  %6 = load %struct.mxl*, %struct.mxl** %5, align 8
  store %struct.mxl* %6, %struct.mxl** %3, align 8
  %7 = load %struct.mxl*, %struct.mxl** %3, align 8
  %8 = getelementptr inbounds %struct.mxl, %struct.mxl* %7, i32 0, i32 3
  %9 = call i32 @list_del(i32* %8)
  %10 = load %struct.mxl*, %struct.mxl** %3, align 8
  %11 = getelementptr inbounds %struct.mxl, %struct.mxl* %10, i32 0, i32 1
  %12 = load %struct.mxl*, %struct.mxl** %11, align 8
  %13 = getelementptr inbounds %struct.mxl, %struct.mxl* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.mxl*, %struct.mxl** %3, align 8
  %17 = getelementptr inbounds %struct.mxl, %struct.mxl* %16, i32 0, i32 1
  %18 = load %struct.mxl*, %struct.mxl** %17, align 8
  %19 = getelementptr inbounds %struct.mxl, %struct.mxl* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.mxl*, %struct.mxl** %3, align 8
  %24 = getelementptr inbounds %struct.mxl, %struct.mxl* %23, i32 0, i32 1
  %25 = load %struct.mxl*, %struct.mxl** %24, align 8
  %26 = getelementptr inbounds %struct.mxl, %struct.mxl* %25, i32 0, i32 2
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.mxl*, %struct.mxl** %3, align 8
  %29 = getelementptr inbounds %struct.mxl, %struct.mxl* %28, i32 0, i32 1
  %30 = load %struct.mxl*, %struct.mxl** %29, align 8
  %31 = call i32 @kfree(%struct.mxl* %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.mxl*, %struct.mxl** %3, align 8
  %34 = call i32 @kfree(%struct.mxl* %33)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mxl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
