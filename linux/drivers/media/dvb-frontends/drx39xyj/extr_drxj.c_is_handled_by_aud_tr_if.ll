; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_is_handled_by_aud_tr_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_is_handled_by_aud_tr_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @is_handled_by_aud_tr_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_handled_by_aud_tr_if(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @DRXDAP_FASI_ADDR2BLOCK(i32 %4)
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @DRXDAP_FASI_ADDR2BANK(i32 %8)
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DRXDAP_FASI_ADDR2BANK(i32 %12)
  %14 = icmp slt i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %15, %11, %7, %1
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @DRXDAP_FASI_ADDR2BLOCK(i32) #1

declare dso_local i32 @DRXDAP_FASI_ADDR2BANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
