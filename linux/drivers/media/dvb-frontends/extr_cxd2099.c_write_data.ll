; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.cxd* }
%struct.cxd = type { i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32*, i32)* @write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_data(%struct.dvb_ca_en50221* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_en50221*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cxd*, align 8
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %6, align 8
  %12 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %11, i32 0, i32 0
  %13 = load %struct.cxd*, %struct.cxd** %12, align 8
  store %struct.cxd* %13, %struct.cxd** %10, align 8
  %14 = load %struct.cxd*, %struct.cxd** %10, align 8
  %15 = getelementptr inbounds %struct.cxd, %struct.cxd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %43

21:                                               ; preds = %4
  %22 = load %struct.cxd*, %struct.cxd** %10, align 8
  %23 = getelementptr inbounds %struct.cxd, %struct.cxd* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.cxd*, %struct.cxd** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = ashr i32 %26, 8
  %28 = call i32 @write_reg(%struct.cxd* %25, i32 13, i32 %27)
  %29 = load %struct.cxd*, %struct.cxd** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @write_reg(%struct.cxd* %29, i32 14, i32 %31)
  %33 = load %struct.cxd*, %struct.cxd** %10, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @write_block(%struct.cxd* %33, i32 17, i32* %34, i32 %35)
  %37 = load %struct.cxd*, %struct.cxd** %10, align 8
  %38 = getelementptr inbounds %struct.cxd, %struct.cxd* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load %struct.cxd*, %struct.cxd** %10, align 8
  %40 = getelementptr inbounds %struct.cxd, %struct.cxd* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %21, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @write_reg(%struct.cxd*, i32, i32) #1

declare dso_local i32 @write_block(%struct.cxd*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
