; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_add_cdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel_ring.c_safexcel_add_cdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_command_desc = type { i32, i32, i32, %struct.TYPE_4__, i8*, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i64 }
%struct.safexcel_crypto_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.safexcel_token = type { i32 }

@EIP197_OPTION_MAGIC_VALUE = common dso_local global i32 0, align 4
@EIP197_OPTION_64BIT_CTX = common dso_local global i32 0, align 4
@EIP197_OPTION_CTX_CTRL_IN_CMD = common dso_local global i32 0, align 4
@EIP197B_MRVL = common dso_local global i64 0, align 8
@EIP197D_MRVL = common dso_local global i64 0, align 8
@EIP197_OPTION_RC_AUTO = common dso_local global i32 0, align 4
@EIP197_MAX_TOKENS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.safexcel_command_desc* @safexcel_add_cdesc(%struct.safexcel_crypto_priv* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca %struct.safexcel_command_desc*, align 8
  %10 = alloca %struct.safexcel_crypto_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.safexcel_command_desc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.safexcel_token*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %22 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %23 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = call %struct.safexcel_command_desc* @safexcel_ring_next_wptr(%struct.safexcel_crypto_priv* %21, i32* %28)
  store %struct.safexcel_command_desc* %29, %struct.safexcel_command_desc** %18, align 8
  %30 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %31 = call i64 @IS_ERR(%struct.safexcel_command_desc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %8
  %34 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  store %struct.safexcel_command_desc* %34, %struct.safexcel_command_desc** %9, align 8
  br label %135

35:                                               ; preds = %8
  %36 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %37 = call i32 @memset(%struct.safexcel_command_desc* %36, i32 0, i32 64)
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %40 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %43 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %15, align 8
  %45 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %46 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @lower_32_bits(i64 %47)
  %49 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %50 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* %14, align 8
  %52 = call i8* @upper_32_bits(i64 %51)
  %53 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %54 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %53, i32 0, i32 4
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %133

57:                                               ; preds = %35
  %58 = load i64, i64* %17, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %133

60:                                               ; preds = %57
  %61 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %62 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to %struct.safexcel_token*
  store %struct.safexcel_token* %65, %struct.safexcel_token** %20, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %70

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69, %68
  %71 = phi i64 [ %66, %68 ], [ 1, %69 ]
  %72 = trunc i64 %71 to i32
  %73 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %74 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 8
  %76 = load i32, i32* @EIP197_OPTION_MAGIC_VALUE, align 4
  %77 = load i32, i32* @EIP197_OPTION_64BIT_CTX, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @EIP197_OPTION_CTX_CTRL_IN_CMD, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %82 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  store i32 %80, i32* %83, align 4
  %84 = load i64, i64* %17, align 8
  %85 = call i32 @lower_32_bits(i64 %84)
  %86 = call i32 @GENMASK(i32 31, i32 2)
  %87 = and i32 %85, %86
  %88 = ashr i32 %87, 2
  %89 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %90 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load i64, i64* %17, align 8
  %93 = call i8* @upper_32_bits(i64 %92)
  %94 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %95 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i8* %93, i8** %96, align 8
  %97 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %98 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @EIP197B_MRVL, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %108, label %102

102:                                              ; preds = %70
  %103 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %10, align 8
  %104 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EIP197D_MRVL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %102, %70
  %109 = load i32, i32* @EIP197_OPTION_RC_AUTO, align 4
  %110 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %111 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %108, %102
  %116 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  %117 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  store i32 2, i32* %118, align 4
  store i32 0, i32* %19, align 4
  br label %119

119:                                              ; preds = %129, %115
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @EIP197_MAX_TOKENS, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %119
  %124 = load %struct.safexcel_token*, %struct.safexcel_token** %20, align 8
  %125 = load i32, i32* %19, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.safexcel_token, %struct.safexcel_token* %124, i64 %126
  %128 = call i32 @eip197_noop_token(%struct.safexcel_token* %127)
  br label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %119

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132, %57, %35
  %134 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %18, align 8
  store %struct.safexcel_command_desc* %134, %struct.safexcel_command_desc** %9, align 8
  br label %135

135:                                              ; preds = %133, %33
  %136 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %9, align 8
  ret %struct.safexcel_command_desc* %136
}

declare dso_local %struct.safexcel_command_desc* @safexcel_ring_next_wptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_command_desc*) #1

declare dso_local i32 @memset(%struct.safexcel_command_desc*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i8* @upper_32_bits(i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @eip197_noop_token(%struct.safexcel_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
