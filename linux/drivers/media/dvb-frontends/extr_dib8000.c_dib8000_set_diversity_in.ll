; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_diversity_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_dib8000.c_dib8000_set_diversity_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dib8000_state* }
%struct.dib8000_state = type { i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"set diversity input to %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @dib8000_set_diversity_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib8000_set_diversity_in(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dib8000_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.dib8000_state*, %struct.dib8000_state** %9, align 8
  store %struct.dib8000_state* %10, %struct.dib8000_state** %5, align 8
  %11 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %12 = call i32 @dib8000_read_word(%struct.dib8000_state* %11, i32 273)
  %13 = and i32 %12, 65520
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %17 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %22 = call i32 @dib8000_write_word(%struct.dib8000_state* %21, i32 272, i32 512)
  %23 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, 4
  %26 = or i32 %25, 2
  %27 = call i32 @dib8000_write_word(%struct.dib8000_state* %23, i32 273, i32 %26)
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %30 = call i32 @dib8000_write_word(%struct.dib8000_state* %29, i32 272, i32 0)
  %31 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dib8000_write_word(%struct.dib8000_state* %31, i32 273, i32 %32)
  br label %34

34:                                               ; preds = %28, %20
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %37 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %54 [
    i32 0, label %39
    i32 1, label %44
    i32 2, label %49
  ]

39:                                               ; preds = %34
  %40 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %41 = call i32 @dib8000_write_word(%struct.dib8000_state* %40, i32 270, i32 1)
  %42 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %43 = call i32 @dib8000_write_word(%struct.dib8000_state* %42, i32 271, i32 0)
  br label %54

44:                                               ; preds = %34
  %45 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %46 = call i32 @dib8000_write_word(%struct.dib8000_state* %45, i32 270, i32 6)
  %47 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %48 = call i32 @dib8000_write_word(%struct.dib8000_state* %47, i32 271, i32 6)
  br label %54

49:                                               ; preds = %34
  %50 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %51 = call i32 @dib8000_write_word(%struct.dib8000_state* %50, i32 270, i32 0)
  %52 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %53 = call i32 @dib8000_write_word(%struct.dib8000_state* %52, i32 271, i32 1)
  br label %54

54:                                               ; preds = %34, %49, %44, %39
  %55 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %56 = getelementptr inbounds %struct.dib8000_state, %struct.dib8000_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 32770
  br i1 %58, label %59, label %71

59:                                               ; preds = %54
  %60 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %61 = call i32 @dib8000_read_word(%struct.dib8000_state* %60, i32 903)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, -9
  %65 = call i32 @dib8000_write_word(%struct.dib8000_state* %62, i32 903, i32 %64)
  %66 = call i32 @msleep(i32 30)
  %67 = load %struct.dib8000_state*, %struct.dib8000_state** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, 8
  %70 = call i32 @dib8000_write_word(%struct.dib8000_state* %67, i32 903, i32 %69)
  br label %71

71:                                               ; preds = %59, %54
  ret i32 0
}

declare dso_local i32 @dib8000_read_word(%struct.dib8000_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @dib8000_write_word(%struct.dib8000_state*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
