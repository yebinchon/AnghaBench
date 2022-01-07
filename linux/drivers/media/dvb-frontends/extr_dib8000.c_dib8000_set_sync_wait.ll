; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_sync_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_sync_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib8000_state = type { %struct.TYPE_3__, %struct.TYPE_4__** }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib8000_state*)* @dib8000_set_sync_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib8000_set_sync_wait(%struct.dib8000_state* %0) #0 {
  %2 = alloca %struct.dib8000_state*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca i32, align 4
  store %struct.dib8000_state* %0, %struct.dib8000_state** %2, align 8
  %5 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %6 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %7, i64 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.dtv_frontend_properties* %10, %struct.dtv_frontend_properties** %3, align 8
  store i32 64, i32* %4, align 4
  %11 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %12 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %16 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %17
  ]

14:                                               ; preds = %1
  store i32 256, i32* %4, align 4
  br label %18

15:                                               ; preds = %1
  store i32 128, i32* %4, align 4
  br label %18

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %1, %16
  store i32 64, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %15, %14
  %19 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %20 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %27 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 1, %28
  %30 = mul nsw i32 %25, %29
  %31 = mul nsw i32 %30, 3
  %32 = sdiv i32 %31, 2
  %33 = add nsw i32 %32, 48
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %18
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %37 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 1, %38
  %40 = mul nsw i32 %35, %39
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 2
  %43 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %44 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %42, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %34, %24
  %49 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %2, align 8
  %51 = call i32 @dib8000_read_word(%struct.dib8000_state* %50, i32 273)
  %52 = and i32 %51, 15
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 %53, 4
  %55 = or i32 %52, %54
  %56 = call i32 @dib8000_write_word(%struct.dib8000_state* %49, i32 273, i32 %55)
  ret void
}

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
