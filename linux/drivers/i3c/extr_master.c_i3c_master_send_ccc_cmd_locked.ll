; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_send_ccc_cmd_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_send_ccc_cmd_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_4__*, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.TYPE_3__ = type { i32 }
%struct.i3c_ccc_cmd = type { i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@I3C_CCC_DIRECT = common dso_local global i32 0, align 4
@I3C_ERROR_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)* @i3c_master_send_ccc_cmd_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i3c_master_send_ccc_cmd_locked(%struct.i3c_master_controller* %0, %struct.i3c_ccc_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca %struct.i3c_ccc_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store %struct.i3c_ccc_cmd* %1, %struct.i3c_ccc_cmd** %5, align 8
  %7 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %8 = icmp ne %struct.i3c_ccc_cmd* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %11 = icmp ne %struct.i3c_master_controller* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %114

15:                                               ; preds = %9
  %16 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %17 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %22 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @rwsem_is_locked(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i1 [ false, %15 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %114

35:                                               ; preds = %27
  %36 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %37 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = bitcast {}** %39 to i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)**
  %41 = load i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)*, i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)** %40, align 8
  %42 = icmp ne i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* @ENOTSUPP, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %114

46:                                               ; preds = %35
  %47 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @I3C_CCC_DIRECT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %58, %46
  %67 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %68 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = bitcast {}** %70 to i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)**
  %72 = load i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)*, i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)** %71, align 8
  %73 = icmp ne i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)* %72, null
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %76 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = bitcast {}** %78 to i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)**
  %80 = load i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)*, i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)** %79, align 8
  %81 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %82 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %83 = call i32 %80(%struct.i3c_master_controller* %81, %struct.i3c_ccc_cmd* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* @ENOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %114

88:                                               ; preds = %74, %66
  %89 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %90 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %89, i32 0, i32 0
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = bitcast {}** %92 to i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)**
  %94 = load i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)*, i32 (%struct.i3c_master_controller*, %struct.i3c_ccc_cmd*)** %93, align 8
  %95 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %96 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %97 = call i32 %94(%struct.i3c_master_controller* %95, %struct.i3c_ccc_cmd* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %88
  %101 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %102 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @I3C_ERROR_UNKNOWN, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %100
  %107 = load %struct.i3c_ccc_cmd*, %struct.i3c_ccc_cmd** %5, align 8
  %108 = getelementptr inbounds %struct.i3c_ccc_cmd, %struct.i3c_ccc_cmd* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %3, align 4
  br label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %6, align 4
  store i32 %112, i32* %3, align 4
  br label %114

113:                                              ; preds = %88
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %111, %106, %85, %63, %43, %32, %12
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
