__attribute__((used)) static int FUNC0(int base, int power)
{
	if (power == 0)
		return 1;
	else
		return (base)*FUNC0(base, power - 1);
}