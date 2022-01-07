; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_create_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-powermac.c_i2c_powermac_create_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"i2c-powermac: Failure to register missing %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*, i8*, i32)* @i2c_powermac_create_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_powermac_create_one(%struct.i2c_adapter* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i2c_board_info, align 4
  %8 = alloca %struct.i2c_client*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast %struct.i2c_board_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strncpy(i32 %11, i8* %12, i32 4)
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = call %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter* %16, %struct.i2c_board_info* %7)
  store %struct.i2c_client* %17, %struct.i2c_client** %8, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %19 = icmp ne %struct.i2c_client* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %3
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %21, i32 0, i32 0
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %20, %3
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #2

declare dso_local %struct.i2c_client* @i2c_new_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

declare dso_local i32 @dev_err(i32*, i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
